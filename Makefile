
all:		gvnutricalc

clean:
	rm -f gvnutricalc *~ *.c *.log *.exe gvnutricalc-compile.sh

install:	all
	cp -f gvnutricalc /usr/local/bin

gvnutricalc:	gvnutricalc.trp init.tin quit.tin gui.tin cmp.tin \
		constants.tin graph-tab.tin graph-pix.tin utils.tin
	trpc -f gvnutricalc.trp

