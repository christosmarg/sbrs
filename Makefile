BIN = autoblog 
MAN1 = autoblog.1
PREFIX = /usr/local
MAN_DIR = ${PREFIX}/man/man1
BIN_DIR = ${PREFIX}/bin

.PHONY: install

all: ${BIN}

install: all
	mkdir -p ${DESTDIR}${BIN_DIR}
	cp -f ${BIN} ${DESTDIR}${BIN_DIR}
	mkdir -p ${DESTDIR}${MAN_DIR}
	cp -f ${MAN1} ${DESTDIR}${MAN_DIR}
	chmod 644 ${DESTDIR}${MAN_DIR}/${MAN1}
