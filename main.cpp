/*
Behind the scenes of - malloc, calloc, realloc and free.

Refrences:
- https://danluu.com/malloc-tutorial/
- https://wiki-prog.infoprepa.epita.fr/images/0/04/Malloc_tutorial.pdf

*/

#include <stdio.h>
#include <assert.h>
#include <unistd.h>

void *malloc(size_t size)
{
    void *p = sbrk(0);
    void *request = sbrk(size); // sbrk - SET BREAK, it's used to modify the size of heap
    if (request == (void *)-1)
    {
        return NULL; // sbrk failed.
    }
    else
    {
        assert(p == request); // Not thread safe.
        return p;
    }
}

int main()
{
    size_t req = 1;
    void *check = malloc(req);

    if (!check)
        printf("malloc() failed");
    else
        printf("Recd %zu bytes of memory from malloc()\n", req);
    return 0;
}
