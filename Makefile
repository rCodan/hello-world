SRCDIR=.
INCDIR=.
OBJDIR=.
BINDIR=.

CC=gcc
CFLAGS=-Wall -Wextra -pedantic -ansi -I$(INCDIR) -Os $(CPPFLAGS)
LDFLAGS=
CPPFLAGS=
PROG=main
MODULE=$(PROG).o


.PHONY: clean

all: $(PROG)

$(PROG): $(MODULE)
	$(CC) -o $(BINDIR)/$(PROG) $(OBJDIR)/$(PROG).o $(LDFLAGS)

%.o: $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c -o $(OBJDIR)/$@ $<

clean:
	rm -f $(BINDIR)/$(PROG)
	rm -f $(OBJDIR)/$(MODULE)
