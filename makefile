# makefile for bs6c.s
#
bs6c: bs6c.o
	ld bs6c.o -o ./Build/DEBUG/bs6c

bs6c.o: bs6c.s
	as -g bs6c.s -o bs6c.o

.PHONY: clean
clean:
	rm ./*.o
	rm ./Build/DEBUG/*

