BINARIES = getfontname stripttc

default: $(BINARIES)

%: %.c
	gcc -O -o $@ $<

clean:
	-rm -f $(BINARIES) *.o
