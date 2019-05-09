CC=clang

#CFLAGS=-O3
LDFLAGS=-lm
PROG=bt

S s:
	rm npbparams.h
	ln -s npbparams-S.h npbparams.h
	$(CC) $(CFLAGS) *.c -o $(PROG) $(LDFLAGS)

A a:
	rm npbparams.h
	ln -s npbparams-A.h npbparams.h
	$(CC) $(CFLAGS) *.c -o $(PROG) $(LDFLAGS)

B b:
	rm npbparams.h
	ln -s npbparams-B.h npbparams.h
	$(CC) $(CFLAGS) *.c -o $(PROG) $(LDFLAGS)

C c:
	rm npbparams.h
	ln -s npbparams-C.h npbparams.h
	$(CC) $(CFLAGS) *.c -o $(PROG) $(LDFLAGS)

all: A


clean:
	rm -rf *.o $(PROG)

