# Compiler - GNU's g++ or clang++
CC = clang++
FLAGS = -Wall -Wextra -pedantic -g

SRCS = main.cpp
TARGET = main

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(FLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
