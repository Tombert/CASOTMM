all: casot

casot: main.o
	clang++ main.o -o casot.o

main.o: src/main.cpp
	clang++ -c src/main.cpp
