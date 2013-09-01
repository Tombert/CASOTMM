all: casot

casot: main.o casobject.o casexpression.o casexponent.o
	g++ bin/object/main.o bin/object/casobject.o bin/object/casexpression.o bin/object/casexponent.o -o bin/casot/casot.out

main.o: src/main.cpp
	g++ -c src/main.cpp -o bin/object/main.o

casobject.o: src/classes/casobject.cpp src/classes/casobject.h
	g++ -c src/classes/casobject.cpp -o bin/object/casobject.o

casexpression.o: src/classes/casexpression.h src/classes/casexpression.cpp 
	g++ -c src/classes/casexpression.cpp -o bin/object/casexpression.o

casexponent.o: src/classes/casexponent.h src/classes/casexpression.cpp
	g++ -c src/classes/casexponent.cpp -o bin/object/casexponent.o

clean:
	rm -rf bin/object/* bin/casot/*
