# use GNU's g++ or clang++ to compile
CC = clang++
FLAGS = -O0 -W -Wall -Wextra -g

all: malloc.so test-0 test-1 test-2 test-3 test-4 main

malloc.so: malloc.cpp
	$(CC) $^ $(FLAGS) -o $@ -shared -fPIC

test-0: tests/test-0.cpp
	$(CC) $^ $(FLAGS) -o $@

test-1: tests/test-1.cpp
	$(CC) $^ $(FLAGS) -o $@

test-2: tests/test-2.cpp
	$(CC) $^ $(FLAGS) -o $@

test-3: tests/test-3.cpp
	$(CC) $^ $(FLAGS) -o $@

test-4: tests/test-4.cpp
	$(CC) $^ $(FLAGS) -o $@

main: main.cpp
	$(CC) $^ $(FLAGS) -o $@

clean:
	rm -f malloc.so test-0 test-1 test-2 test-3 test-4 main

