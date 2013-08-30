all: casot

casot: main.o CasExpression.o
	clang++ main.o casexpression.o -o casot.out

main.o: src/main.cpp
	clang++ -c src/main.cpp

CasExpression.o: src/classes/casexpression.cpp src/classes/casexpression.h
	clang++ -c src/classes/casexpression.cpp
