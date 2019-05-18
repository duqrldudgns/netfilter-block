all : netfilter_block

netfilter_block : main.o
	g++ -o netfilter_block main.o -lnetfilter_queue

main.o : main.c
	g++ -c -o main.o main.c

clean :
	rm -f netfilter_block *.o

