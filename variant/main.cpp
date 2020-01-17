#include "variant.hpp"
#include <iostream>
#include <vector>


int main() {
  using Numeric = variant<int, float, double>;
  Numeric a = 11;
  std::vector<Numeric> v = {11,12,13,1.1};
}