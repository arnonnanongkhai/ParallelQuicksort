debug: debug_quicksort.o 
	gcc -o QuickSort quicksort.o -lpthread
	
debug_quicksort.o: quicksort.c
	gcc -c -g -Wall -O0 -Wa,-a,-ad quicksort.c > quicksort.lst
	
release: quicksort.c
	gcc -O3 -Wall -o QuickSort quicksort.c -lpthread
		
clean:
	rm *.o *.lst QuickSort
