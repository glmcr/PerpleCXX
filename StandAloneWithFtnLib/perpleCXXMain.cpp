#include <iostream>
#include <string>
#include <vector>
//#include <stdio.h>
//#include <stdlib.h>
//#include <string.h>
//#include <unistd.h>

extern "C" {
#include "perplex_c.h"
}

//---
int main(int argc, char* argv[] ) {

   std::vector<double> wtphases(p_size_phases);
   std::vector<double> cphases(p_size_phases * p_size_components);
   std::vector<char> namephases(p_size_phases * p_pname_len);
   std::vector<double> sysprop(p_size_sysprops);
  
   const int nbArgc= 2;

   const std::string whoAmI=  argv[0];
  
   if (argc != nbArgc) {
      std::cerr << whoAmI << ": ERROR: argc != "<< nbArgc << std::endl;
      std::exit(1);
   }
  
   const std::string perplexLegacyInputFile= argv[1];

   std::cout << whoAmI << ": perplexLegacyInputFile=" << perplexLegacyInputFile << std::endl;

   const int nbComponents= ini_phaseq(perplexLegacyInputFile.c_str());
   
   //const int nbComponents= number_of_components();
     
   std::cout << whoAmI << ": nbComponents=" << nbComponents << std::endl;

   // --- read P,T parameters and components wght amounts fron another input text file?
   //phaseq(average_pressure/1.e5, average_temperature,
   //       nbComponents, comp.data(), &nphases, wtphases.data(), cphases.data(),
   //       sysprop.data(), namephases.data(), phaseq_dbg);
}
