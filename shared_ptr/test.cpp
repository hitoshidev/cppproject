#include "shared_ptr.hpp"
#include <iostream>

struct Object {
  private: int i_;
  public: Object(int i): i_(i) {}
  public: ~Object() {}
  public: void put() { std::cout << i_; }
};

int main() {
  my::shared_ptr<Object> sp1( new Object(10));
  {
    my::shared_ptr<Object> sp2( sp1 );
    sp2->put();
  }
}