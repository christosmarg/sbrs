BIN = autoblog
MAN1 = ${BIN}.1
PREFIX = /usr/local
MAN_DIR = ${PREFIX}/man/man1
BIN_DIR = ${PREFIX}/bin

CP=cp -f
MKDIR = mkdir -p

.PHONY: install

all: ${BIN}

install: all
	${MKDIR} ${DESTDIR}${BIN_DIR}
	${CP} ${BIN} ${DESTDIR}${BIN_DIR}
	${MKDIR} ${DESTDIR}${MAN_DIR}
	${CP} ${MAN1} ${DESTDIR}${MAN_DIR}
	chmod 644 ${DESTDIR}${MAN_DIR}/${MAN1}
