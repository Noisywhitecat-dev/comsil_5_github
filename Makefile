arraytest : array.o rangearray.o main.o
	g++ -o arraytest array.o rangearray.o main.o

array.o : Array.h array.cpp
	g++ -c array.cpp

rangearray.o : RangeArray.h rangearray.cpp
	g++ -c rangearray.cpp

main.o : main.cpp Array.h RangeArray.h
	g++ -c main.cpp

clean :
	rm *.o