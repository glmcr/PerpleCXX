2022-03-16: This is not needed anymore, the cmake_perplex-master/CMakeLists.txt is ok now in principle 
---------------------------------------------------------------------------
1). cmake part: removed some *lib.f files and another *.f one after cmake complaining not finding them (perplex versions mismatch)

2). Need to manually compile perplex_stable/BLASLib.f to produce perplex_stable/BLASLib.o
 
gfortran -c BLASlib.f


3). Add BLASLib.o at the end of the compile command to both perplex-stable/CMakeFiles/meemum.dir/link.txt and
    perplex-stable/CMakeFiles/vertex.dir/link.txt

4). make -f Makefile install
