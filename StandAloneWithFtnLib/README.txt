This directory is just there to start things off and do some experiment and 
it will eventually disappear.

It is still using Perple_X fortran code as a lib and it highjacks B. Myhill's C++ 
lib code https://github.com/glmcr/aspect/tree/master/contrib/perplex that was intended
to be used as an ASPECT plugin-like thing.

Here we simply want to have a standalone C++ code that leverages B. Myhill's C++ lib
code instead of using it from inside an ASPECT run instance.

It is possible that this standalone code could be used to do  metamorphic petrology
calculations to produce pseudosections (by using it through a series of scripts running
at the same time) at some point later this year (2022).   

