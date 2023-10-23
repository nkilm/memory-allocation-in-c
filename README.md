# How is memory managed in a C program?
Whenever a new process is created, OS reserves stack and heap space for the newly created process. We can make use of various system calls such as [sbrk(N)](https://man7.org/linux/man-pages/man2/sbrk.2.html) to request for memory from the heap, simply put we are manipulating the size of data segment. Increment/Decrement the programs' data space by N Bytes.

## Memory Layout for a process
![Visual representation of Memory Layout for a process](https://github.com/nkilm/memory-allocation-in-c/assets/79012023/944c5eb7-d9dc-4acc-87ad-9b9b28225726)

## Data Structures
- Singly Linked list
> To keep track of blocks which are free/in-use. We can make use of various [Memory Allocation algorithms](https://www.geeksforgeeks.org/partition-allocation-methods-in-memory-management/) to assign a block.

Node definition of SLL
```cpp
struct block_meta
{
    size_t size;
    struct block_meta *next;
    int free; // 0 or 1
};
```

The `HEAD` of the SLL is defined as below,
https://github.com/nkilm/memory-allocation-in-c/blob/021c95c21c5e9883f8dfb05b35db575b04ae07f4/malloc.cpp#L32

## Running Locally
Please make sure to install `clang` before compiling,
```sh
# from project's root
make
```

## Testing
```sh
./main /bin/ls

./test-0
./test-1
...
```

## To-Do
- [ ] Implement Block Splitting/Merging for efficient allocation.

## References
- https://danluu.com/malloc-tutorial/
- https://wiki-prog.infoprepa.epita.fr/images/0/04/Malloc_tutorial.pdf

