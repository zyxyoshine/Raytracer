all: tracer

tracer: tracer.o scene.o vector.o object.o fimage.o parser.o
	g++ tracer.o scene.o vector.o object.o fimage.o parser.o -o tracer -Wall -Wextra -O3 -fopenmp -g

%.o:%.cpp
	g++ $^ -c -o $@ -Wall -Wextra -O3 -fopenmp -g
	
clean:
	rm -f tracer

