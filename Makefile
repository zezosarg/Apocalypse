
# To use this Makefile, you must type:
#
#        make xxxx
# where
#       xxxx is the name of the file you wish to compile without .cpp.

CC = g++

GCCFLAGS = -fpcc-struct-return
CFLAGS = -c
INCLUDE = -I/usr/include
LDFLAGS = -L/usr/lib/
LDLIBS =  -lGL -lGLEW -lglfw 

%.o:%.cpp 
	$(CC) $(GCCFLAGS) $(INCLUDE) $(CFLAGS) %.cpp $(LDFLAGS) $(LDLIBS) -o $(PROG)
default:
	apocalypse.cpp
