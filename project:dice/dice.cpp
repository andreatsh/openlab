//
// Author: Andrea Miglietta
// Email:  andrea.miglietta92@gmail.com
//
// Simple C++ code to demonstrate dice rolling.
//

#include <iostream>
#include <functional>
#include <map>
#include <random>

int main(int argc, char *argv[])
{
  if (argc<4)
  {
      std::cerr << "Usage: " << argv[0]
                << " <dice number> <faces number> <rolls number>"
                << std::endl;
      return 1;
  }
  int ndice  = atoi(argv[1]);
  int nfaces = atoi(argv[2]);
  int nrolls = atoi(argv[3]);

  std::random_device randdev;
  unsigned int seed = randdev();

  std::default_random_engine randgen(seed);
  std::uniform_int_distribution<int> udistr(1,nfaces);

  auto dice = std::bind (udistr,randgen);

  std::map<int,int> histo;
  // Initialize histogram:
  // For the throw of a single dice, all outcomes are equally probable.
  // But in the throw of two or more dice, the total number of different
  // possibilities are not equally probable because there are more ways
  // to get some numbers than others. In this case some key values, those
  // in the gaussian tails, may not be extracted from dice rolling.
  // I want to force my histogram to have all keyvaluse set, even if they
  // were zero.
  for (int i=ndice; i<=ndice*nfaces; ++i)
      histo[i]=0;

  for (int i=0; i<nrolls; ++i)
  {
      int keyvalue = 0;
      for (int j=0; j<ndice; ++j) keyvalue += dice();
      ++histo[keyvalue];
  }

  // Print the results on standard output
  for (std::map<int,int>::iterator it=histo.begin(); it!=histo.end(); ++it)
      std::cout << it->first << " " << it->second << std::endl;

//  More compact and type saving way to do previous loop:
//  for (auto it: histo)
//      std::cout << it.first << " " << it.second << std::endl;

  return 0;
}
