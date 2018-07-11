appname := sha
#CXX :=g++ 


ausgabe: main.o message.o 
	CXX main.o message.o -o output1

main.o: main.cc
	CXX -c main.cc 

message.o: message.cc message.h
	CXX -c message.cc

clean:
	rm -f *.o ausgabe
	rm -f sha