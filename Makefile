CC=g++
CFLAGS=-g -rdynamic
#CFLAGS=-O3
DEPS = MP2D.h
OBJ = Main.o MP2D.o


%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

MP2D: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^  

.PHONY: clean

clean: 
	rm -f *.o MP2D
