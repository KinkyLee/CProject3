.SUFFIXES:.c .o

CC=gcc
EXEC=app
SRCS=main.c\
	a.c\
	b.c

OBJS=$(SRCS:.c=.o)
FLAG1=-o
FLAG2=-c

start: $(OBJS)
	$(CC) $(FLAG1) $(EXEC) $(OBJS)
	@echo "---------ok--------"

.c.o:
	$(CC) $(FLAG1) $@ $(FLAG2) $<

clean:
	rm -rf $(OBJS)
