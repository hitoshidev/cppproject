
namespace my {


template <typename T>
class shared_ptr {

  private: T* ptr_;
  private: my::detail::shared_count count_;
  // ctor
  public: shared_ptr() = delete;
  public: explicit shared_ptr(T* p): ptr_(p), count_(p) {}
  public: explicit shared_ptr( const shared_ptr& p): ptr_(p.ptr_), count_(p.count_) {}
  public: ~shared_ptr() {}
  // external func
  public: T& operator*() const {
    return *ptr_;
  }
  public: T* operator->() const {
    return ptr_;
  }
};

namespace detail {

class sp_counted_base {
  private: long count_;
  // ctor
  public: sp_counted_base(): count_(1) {}
  public: virtual ~sp_counted_base() {}
  // func
  public: void addref() {
    ++count_;
  }
  public: void release() {
    if(--count_ == 0) {
      dispose();
      delete this;
    }
  }
  public: virtual void dispose() =0;
};

template <typename T>
class sp_counted_impl: public sp_counted_base {
  private: T* ptr_;
  // ctor
  public: sp_counted_impl(T* p): ptr_(p) {}
  public: void dispose() override {
    delete ptr_;
  }

};

class shared_count {
  private: sp_counted_base* pimpl_;
  // ctor
  public: shared_count() = delete;
  public: template <typename T>
  shared_count(T* p): pimpl_(new sp_counted_impl(ptr)) {}
  public: ~shared_count() {
    if(pimpl_){
      pimpl_->release();
    } 
  }
  public: shared_count( const shared_count& sc ): pimpl_(sc.pimpl_) {
    if(pimpl_) {
      pimpl_->addref();
    }
  }
  public: shared_count& operator=( const shared_count& sc) {
    sp_counted_base* tmp = sc.pimpl_;
    if(tmp != pimpl_) {
      if(tmp){
        tmp->addref();
      } 
      if(pimpl_){
        pimpl_->release();
      }
      pimpl_ = tmp;
    }
    return *this;
  }
};




} // namespace detail
} // namespace my