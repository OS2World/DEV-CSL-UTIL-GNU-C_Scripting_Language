Building CSL with IBM VisualAge C++ V3.0.8 for OS/2
===================================================

Prerequisits
------------

 - Install VisualAge C++ V3.0 and Fixpack 8
 
 - If you want to build the Oracle interface, have Oracle installed (at least
   the Oracle OCI package or Pro*C respectively).
   
   If you do NOT want to build the Oracle interface, edit makefile in this
   directory and comment out the appropriate line as:

   ---before---
     Oracle.bld \
   ---after----
   # Oracle.bld \
   ------------

 - If you want to build the DB2 interface, have DB2 installed (at least the
   developer tools).

   If you do NOT want to build the DB2 interface, edit makefile in this
   directory and comment out the appropriate line as:
   
   ---before---
     Db2.bld \
   ---after----
   # Db2.bld \
   ------------

 - If you want to build the MySQL interface, have MySQL 3.23.32 installed 
   and functional. You will find directions how to do that in the file
   ..\..\Mysql.txt. 

   If you have ANY LATER VERSION of MySQL, please check the modified file 
   .\Mysql\mysql.h. You will eventually have to replace it by an accordingly 
   modified file out of your mysql version.
   (No big deal, just have to append "_System" at the end of one line).

   If you do NOT want to build the MySQL interface, edit makefile in this
   directory and comment out the appropriate line as:
   
   ---before---
     Mysql.bld \
   ---after----
   # Mysql.bld \
   ------------

 - Make sure environment vars PATH, INCLUDE and LIB are set up correct to
   point to the appropriate directories of VACPP, Oracle, DB2 and MYSQL.
   You may edit and use .\env.bat for this.

   
Building CSL
------------

Open a command line in this directory, execute env.bat to set up your
environment, and then enter the make command as:

  nmake
  nmake /a
    Builds all targets.
    Use /a to force rebuild even if targets are up-to-date.
       
  nmake install
  nmake install /a
    Builds all targets and copies to css kernel and libraries to ..\bin
    Use /a to force rebuild even if targets are up-to-date.

  nmake clean
    Cleans up subdirectories by delete all intermediate files.
  
                                                         2000.06.29 Peter Koch

