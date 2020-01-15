CC=gcc
OBJECTS_MAIN= trie.o
FLAGS= -Wall -g -fPIC
PROGRAMS=frequency

all: $(PROGRAMS)
frequency: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o frequency $(OBJECTS_MAIN) -lm

trie.o: trie.c trie.h 
	$(CC) $(FLAGS) -c trie.c

.PHONY: clean all

clean:
	rm -f *.o $(PROGRAMS)
