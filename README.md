# PerpleCXX
A somewhat crazy and rather ambitious project that aim to completely rewrite and modernize the Perple_X metamorphic petrology calculation code (https://www.perplex.ethz.ch/ & https://petrol.natur.cuni.cz/~ondro/perplex-sources-latest.zip) using the C++ programming language and its fine object-oriented capabilities. It also implies the usage of code parallelization (both threads and MPI), dynamic memory allocation, command line standalone usage, the possibility to be used as a library that could be linked-plugged into geodynamics codes (like ASPECT: https://github.com/geodynamics/aspect) or python code and the usage of modern input configuration file (YAML and-or JSON) and output formats (VTK, VTU?)

I firmly believe that the use of an object-oriented programming framework is really necessary in order to get an efficient control of the huge complexity of the metamorphic petrology calculations (specifically the automated Gibbs' free energy minimization algorithm used by Perple_X) and of all of their associated thermodynamically consistent databases of geologically relevant chemical species (minerals and fluids).

Stay tuned!
