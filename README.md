# ert_mac
Embedded realtime target for OSX operating system.

There is already a common used target for linux based system called
ert_linux which is hosted here: http://lintarget.sourceforge.net/

Since Simulink and Matlab is running as well under MacOSX i have implemented
a similar target for MAC. The big advantage for OSX based systems is the mach
scheduler, which is a native real-time part of the Apple operating system.

The major changes compared to the lintarget are the absolute time retrieval and 
the semaphore synchronization.

Inside the lintarget there are several settings and code constructs which prevents
the embedded coder of generating C++ code. This is now possible with the 
ert_mac target.