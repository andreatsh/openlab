///
// Author: Andrea Miglietta
// Email:  andrea.miglietta92@gmail.com
//
// This program takes data from standard input
// And evaluate average and standard deviation
//

#include <cmath>     // sqrt()
#include <iostream>
#include <numeric>   // accumulate()
#include <vector>

int main(int argc, char *argv[])
{

  int value;
  std::vector<int> vec;
  // Read values directly from standard input and load them in a vector
  while (std::cin >> value) {
      vec.push_back(value);
  }

  double avg = ( (double)std::accumulate(vec.begin(),vec.end(),0) / vec.size() );
  std::cout << "Average: " << avg << std::endl;

  // Evaluate standard deviation of S value
  double sigma2 = 0;
  for ( auto it: vec ) sigma2 += (avg - it)*(avg - it);
  sigma2 /= vec.size();

  std::cout<< "Standard deviation: " << sqrt(sigma2) << std::endl;

  return 0;
}

