# Welcomre to Mamat, 044101
#
# This is the project's Makefile. It contains the instructions for compiling
# the projects C files, and then link the generated objects into an executable.
# This simple file will compile "main.c" to "main.o" and then link it (with C
# runtime library) to the executable "prog.exe".
#
# To compile, open the terminal in the folder that contains
# this file and run "make".
#
# To clean, open the terminal in the folder that contains
# this file and run "make clean".
#
# All eclipse projects in this machine are under /home/mamat/Documents/

#Defenitions

CC     = gcc
CFLAGS = -Wall -g -std=c99
CCLINK = $(CC)
OBJS   = file0.o file1.o file2.o file3.o file4.o main.o
EXEC = prog.exe
RM = rm -rf *.o prog.exe

prog.exe: $(OBJS)
	$(CCLINK) $(OBJS) -o prog.exe

#Dependencies - 

file0.o: file0.c file0.h file3.h

file1.o: file1.c file1.h file0.h file2.h

file2.o: file2.c file2.h file0.h file1.h

file3.o: file3.c file3.h file1.h

file4.o: file4.c file4.h file0.h file1.h file3.h

main.o: main.c file0.h file1.h file2.h file3.h file4.h

#Clean

clean:
	rm -fr *.o prog.exe
