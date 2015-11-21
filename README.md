# ert_mac
Embedded real-time target for OSX operating system.
 
There is already a common used target for Linux based system called
ert_linux, which is hosted here: http://lintarget.sourceforge.net/
 
Since Simulink and Matlab are running as well under MacOSX I have implemented
a similar target for MAC. The big advantage for OSX based systems is the mach
scheduler, which is a native real-time part of the Apple operating system.
 
The major changes compared to the lintarget are the absolute time retrieval and 
the semaphore synchronization.
 
Inside the lintarget there are several settings and code constructs which prevent
the embedded coder of generating C++ code. This is now possible with the 
ert_mac target.

Compared to the simulink desktop realtime the ert_mac target makes it possible to use
your own custom drivers with all available operating system functions and aswell in C++.
Hence if there is no support for your USB device or whatever device you could just
implement a block using standard operating system calls.
