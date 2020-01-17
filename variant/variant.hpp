#include <type_traits>
#include <cstddef>
#include <iostream>

// variant_storage
template <typename...>
struct variant_storage;

template <typename A, class... B>
struct variant_storage<A, B...> : variant_storage<B...> {
  using base_t = variant_storage<B...>;
  static constexpr auto size = sizeof(A) > base_t::size ? sizeof(A) : base_t::size;
  static constexpr auto align = alignof(A) > base_t::align ? alignof(A) : base_t::align;
};

template <typename Z>
struct variant_storage<Z> {
  static constexpr auto size = sizeof(Z);
  static constexpr auto align = alignof(Z);
};


template <typename... Types>
using storage_t = typename std::aligned_storage<variant_storage<Types...>::size, variant_storage<Types...>::align>::type;


// variant_typeid
template <typename...>
struct variant_typeid;

template <typename A, typename... B>
struct variant_typeid<A, B...> : variant_typeid<B...> {
  using base_t = variant_typeid<B...>;
  static constexpr std::size_t id = base_t::id + 1;

  template <typename T, typename std::enable_if<std::is_same<A, typename std::decay<T>::type>::value, std::nullptr_t>::type = nullptr>
  static auto assign(void* p, T&& t) {
    ::new(p) A(std::forward<T>(t));
    return id;
  }
  using base_t::assign;
};

template <typename Z>
struct variant_typeid<Z> {
  static constexpr std::size_t id = 1;

  template <typename T, typename std::enable_if<std::is_same<Z, typename std::decay<T>::type>::value, std::nullptr_t>::type = nullptr>
  static auto assign(void* p, T&& t) {
    ::new(p) Z(std::forward<T>(t));
    return id;
  }
};

template<typename... Ts>
struct variant {
  variant() = default;

  template<typename T>
  variant(T&& t) : id_(variant_typeid<Ts...>::assign(&storage_, std::forward<T>(t))) {}

  template<typename F, typename... Args>
  typename std::invoke_result<F, Args...>::type visit(F&& f);

  storage_t<Ts...> storage_;
  std::size_t id_ = 0;

};

