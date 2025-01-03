# :floppy_disk: Implementing `malloc`

For this task, you will provide a simple implementation of the `malloc` library directly in x86 assembly. The implementation will be based on a global vector of size 10 MB. Such a vector can be logically viewed as a set of "blocks" of a certain number of bytes, the address of each of which can be returned in response to an invocation of `malloc`. A subsequent call to `free` will consider those blocks as available again.

By completing this homework, you will encounter writing assembly code that will run on a real processor and you will see some new features of the assembler, in order to compile working code.

## Logistics

You can work in a **group of up to three people**. The code must be delivered by doing a push operation on this repository.

The repository is configured to run correctness tests, contained in `test.c`. The `Makefile` file compiles your assembly code together with `test.c` to verify its correctness. You can also use this approach to run tests locally. These files **must not** be modified, or they will be excluded from the final evaluation. The results of the automated test are visible in the "*Test Implementation*" step of the action.

Your solution should be placed in the `malloc.S` file. The file already contains some declarations and directives needed to compile and test the solution. Further details on the specification and how you can build the program are provided below.

## Assessment

You will receive **zero** points if your implementation is defective and fails the automated test. Otherwise, the grade will be calculated as follows, at our sole discretion:

1. *Correctness (40 points)*: you will receive all the points if your solution is considered correct.
2. *Performance (max 20 points)*: the solutions will be tested, at the end of the delivery, using a throughput metric. A ranking will be drawn up for efficiency: the 3 most efficient solutions will receive +20 points; the subsequent solutions up to the 10th will receive +10 points; the subsequent solutions up to the 20th will receive +5 points.
3. *Collaborative work (max 15 points)*: we started the course talking about the usefulness of `git` as a collaborative development tool. We conclude the course using it. Organize your team's work by leveraging the tools for collaborative work: [issue tracking](https://github.com/features/issues), [pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests), [branch](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches), and [code review](https://github.com/features/code-review). Also, try to use commit messages appropriately. Groups that have used these tools in the best way will get a higher score in this item.
4. *Style (max 10 points)*: a score will be assigned based on the elegance of the proposed solution. In particular:
     - the code should be broken down into functions and use the least possible number of global variables;
     - the code should start with a header comment describing the data structures used to support the correct execution of allocations/deallocations;
     - each subroutine should have a header comment describing what it does and how it does it, also illustrating what arguments are expected to the function.

## Specifications

To understand what you need to do, it is useful to remember how `malloc` and `free` work.

> [!NOTE]
> `void *malloc(size_t size)`: Allocates memory of at least `size` bytes and returns a pointer to the allocated memory, or `NULL` on error. The memory is not initialized. If `size` is zero, `malloc()` returns `NULL` or a pointer that can later be passed to `free()`.

> [!NOTE]
> `void free(void *ptr)`: Frees the memory area pointed to by `ptr`, which must have been previously returned by `malloc()`.

Your malloc library must be able to serve memory allocations by returning blocks of 64, 128, or 256 bytes. These buffers must be taken from the global `memory_pool` vector already declared in `malloc.S`. Of course, `size` can be any value in the range $[0, 256]$: the amount of bytes returned must be rounded up to the nearest value: 64, 128, or 256. If more than 256 bytes of memory is requested, your implementation may return `NULL`.

It is essential to keep track of which portions of `memory_pool` have already been used for previous allocations: for this reason, bitmaps can be used. Each block of the buffer, 64 bytes large, is associated with an allocation state stored in a bitmap, with one bit per block (0 = free, 1 = busy). If you prefer to use other data structures, that is possible, but you should not use linked data structures (which need a malloc, but here you are implementing it yourself!).

The test program will call three functions that you need to implement:

- `my_malloc_init`: You can use this function to initialize the data structures needed for your malloc to work, if necessary. Otherwise, you can leave the empty implementation that is already there.
- `my_malloc`: This function should find 1, 2, or 4 contiguous 64-byte blocks in `memory_pool` and return the starting address. To figure out how many blocks to reserve, round the requested size to 64, 128, or 256. The blocks found should be marked as used. If no available memory is found, NULL is returned.
- `my_free`: This function accepts a pointer to the memory to free. It calculates the block index based on the pointer and marks the blocks (1, 2, or 4) as free. This is the hard part: you have to figure out, just from the address, how many blocks you had previously allocated with a call to `malloc`. If the address passed is not the starting address of a block, the system enters undefined behaviour. So you don't have to worry about calls to `free` with the wrong parameter.

Since your code is being called from compiler-generated code, *you will have to follow the calling conventions exactly, or nothing will work*.

#### Code for 64-bit architectures

99.999% of the time you are using a 64-bit machine. In this case, it is highly likely that your system requires the generated executable to be *position-independent* (PIE), for the security reasons discussed in class.

The immediate effect of this requirement is that access to global variables with hardwired displacement in the instruction no longer works. To solve this problem, x86_64 introduced an additional addressing mode, called *RIP-relative*.

In this mode, it is possible to reference a global variable representing *the displacement from RIP after the fetch phase*. This way, if the program is moved to another area of ​​the address space, it will still be able to run.

This means that an instruction like:

```assembly
movq var, %rax
```

is not a valid statement. You should use the syntax:

```assembly
movq var(%rip), %rax
```

to indicate that `var` should be encoded as displacement by RIP. The first instruction may indeed be assembled by the assembler, but the linker will complain with cryptic errors like:

> [!CAUTION]
> ```
> /usr/bin/ld: malloc.o: relocation R_X86_64_32S against symbol `var' can not be used when making a PIE object; recompile with -fPIE
> /usr/bin/ld: failed to set dynamic section sizes: bad value
> ```

Similarly, an instruction like:

```assembly
movq $var, %rax
```

must be rewritten as:

```assembly
lea var(%rip), %rax
```
