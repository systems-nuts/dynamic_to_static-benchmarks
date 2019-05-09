CC=clang
#CFLAGS=-O3
PROG=is

S s:
	rm npbparams.h
	ln -s npbparams-S.h npbparams.h
	$(CC) $(CFLAGS) *.c -o $(prog) $(LDFLAGS)

A a:
	rm npbparams.h
	ln -s npbparams-A.h npbparams.h
	$(CC) $(CFLAGS) *.c -o $(prog) $(LDFLAGS)

B b:
	rm npbparams.h
	ln -s npbparams-B.h npbparams.h
	$(CC) $(CFLAGS) *.c -o $(prog) $(LDFLAGS)

C c:
	rm npbparams.h
	ln -s npbparams-C.h npbparams.h
	$(CC) $(CFLAGS) *.c -o $(prog) $(LDFLAGS)

all: A


clean:
	rm -rf *.o $(PROG)

