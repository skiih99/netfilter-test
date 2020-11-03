all: netfilter-test

netfilter-test: netfilter.o
	gcc -o netfilter-test netfilter.o -lnetfilter_queue

netfilter.o: 
	gcc -c -o netfilter.o netfilter.c

clean:
	rm -f netfilter-test
	rm -f *.o