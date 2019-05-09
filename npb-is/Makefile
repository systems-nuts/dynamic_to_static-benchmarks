CC=clang
CFLAGS=

S s:
	rm npbparams.h
	ln -s npbparams-S.h npbparams.h
	$(CC) $(CFLAGS) *.c -o is $(LDFLAGS)

A a:
	rm npbparams.h
	ln -s npbparams-A.h npbparams.h
	$(CC) $(CFLAGS) *.c -o is $(LDFLAGS)

B b:
	rm npbparams.h
	ln -s npbparams-B.h npbparams.h
	$(CC) $(CFLAGS) *.c -o is $(LDFLAGS)

C c:
	rm npbparams.h
	ln -s npbparams-C.h npbparams.h
	$(CC) $(CFLAGS) *.c -o is $(LDFLAGS)

all: A


clean:
	rm -rf *.o is
