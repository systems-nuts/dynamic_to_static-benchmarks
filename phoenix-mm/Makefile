CC=clang
#CFLAGS=-O3
LDFLAGS=-lm
PROG=mm

all:
	unzip matrix_file_A.zip
	unzip matrix_file_B.zip
	$(CC) $(CFLAGS) *.c -o $(PROG) $(LDFLAGS)

clean:
	rm -rf *.o $(PROG)
