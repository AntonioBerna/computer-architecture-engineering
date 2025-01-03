#include <stdio.h>
#include <stdlib.h>
#include <time.h>

extern void my_malloc_init(void);
extern void *my_malloc(size_t size);
extern void my_free(void *ptr);

#ifdef SILENT
#define printf(...)
#endif
#ifndef OPERATIONS
#define OPERATIONS 100000
#endif

#define BUFFER_SIZE (10 * 1024 * 1024) // 10 MB
#define CHUNK_SIZE 256


/* Structure to represent a block of memory */
struct bin {
	unsigned char *ptr;
	size_t size;
};

/* Initialize the contents of the memory */
void mem_init(unsigned char *ptr, size_t size) {
	size_t i, j;

	for (i = 0; i < size; ++i) {
		j = (size_t)ptr ^ i; // Combine address and index
		ptr[i] = (unsigned char)(j ^ (j >> 8)); // Pattern based on j
	}
}

/* Check the contents of the memory */
int mem_check(const unsigned char *ptr, size_t size) {
	size_t i, j;

	for (i = 0; i < size; ++i) {
		j = (size_t)ptr ^ i; // Recreate the pattern based on address and index
		if (ptr[i] != (unsigned char)(j ^ (j >> 8))) // Compare the stored value
			return 0; // Corruption detected
	}
	return 1; // Full memory
}

/* Allocate a block of memory */
void bin_alloc(struct bin *m, size_t size) {
	if (m->size > 0) {
		my_free(m->ptr);
	}
	m->ptr = my_malloc(size);
	if (!m->ptr) {
		printf("Out of memory! Requested size: %zu\n", size);
		exit(1);
	}
	m->size = size;
	mem_init(m->ptr, m->size);
}

/* Free up a block of memory */
void bin_free(struct bin *m) {
	if (m->size == 0) return;
	if (!mem_check(m->ptr, m->size)) {
		printf("Memory corruption detected!\n");
		exit(1);
	}
	my_free(m->ptr);
	m->ptr = NULL;
	m->size = 0;
}

static void *ptrs[BUFFER_SIZE / CHUNK_SIZE] = {0};

void test_all_memory(void) {
	printf("Allocating all memory...\n");
	for (size_t i = 0; i < BUFFER_SIZE / CHUNK_SIZE; ++i) {
		ptrs[i] = my_malloc(CHUNK_SIZE);
		if (ptrs[i] == NULL) {
			printf("Out of memory! Requested size: %d\n", CHUNK_SIZE);
			exit(1);
		}
	}
	if (my_malloc(64) != NULL) {
		printf("Providing more memory than requested.\n");
		exit(1);
	}
	printf("Testing free...\n");
	my_free(ptrs[0]);
	if ((ptrs[0] = my_malloc(CHUNK_SIZE)) == NULL) {
		printf("free() didn't free any memory\n");
		exit(1);
	}
	for (size_t i = 0; i < BUFFER_SIZE / CHUNK_SIZE; ++i) {
		my_free(ptrs[i]);
	}
}


/* Malloc and free test */
int main(void) {
	const int num_bins = 100;       // Number of blocks to test
	const size_t max_size = 256;    // Maximum size of a block
	struct bin bins[num_bins];      // Array of blocks
	int operations = OPERATIONS;    // Number of operations to be performed

	// Initialize the memory manager
	my_malloc_init();

	// Allocator specification stress test
	test_all_memory();

	// Initialize blocks
	for (int i = 0; i < num_bins; ++i) {
		bins[i].ptr = NULL;
		bins[i].size = 0;
	}

	// Initialize the random number generator
	srand((unsigned int)time(NULL));

	printf("Starting malloc/free test...\n");

	for (int op = 0; op < operations; ++op) {
		int idx = rand() % num_bins;
		int action = rand() % 10;

		if (bins[idx].ptr == NULL)
			action = 0;

		if (action < 8) {
			size_t size = (rand() % max_size) + 1; // Random size between 1 and max_size
			bin_alloc(&bins[idx], size);
			printf("Allocated bin[%d]: %zu bytes\n", idx, size);
		} else { // Deallocation
			printf("Freeing bin[%d]\n", idx);
			bin_free(&bins[idx]);
		}
	}

	// Free all remaining blocks
	for (int i = 0; i < num_bins; ++i) {
		bin_free(&bins[i]);
	}

	printf("All bins freed successfully.\n");
	return 0;
}
