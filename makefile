CC=gcc
CFLAGS= -lpq
DEPS =  
CPPFLAGS += -I/usr/local/pgsql/include
OBJ = main.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm main *.o
