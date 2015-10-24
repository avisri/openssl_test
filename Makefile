IDIR =include
CC=gcc
CFLAGS=-I$(IDIR) -I/usr/local/opt/openssl/include

ODIR=obj
LDIR =lib

LIBS=-lm -L/usr/local/opt/openssl/lib -L$(LDIR) -lssl -lcrypto

_DEPS = ssltest.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = ssltest.o createsoc.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

ssltest.out : $(OBJ)
		$(CC) $(CFLAGS) $(LIBS)  $(OBJ) -o ssltest.out

$(ODIR)/%.o: src/%.c $(DEPS)
		$(CC) -c -o $@ $< $(CFLAGS)

ssltest: $(OBJ)
		gcc -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
		rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 
