# See LICENSE file for copyright and license details.
# sbrs - simple blog and rss system
.POSIX:

SH = sbrs
VERSION = 0.1
DIST = ${SH}-${VERSION}
MAN1 = ${SH}.1
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man
# OpenBSD
#MANPREFIX = ${PREFIX}/man

all: ${SH}
	chmod +x ${SH}

dist:
	mkdir -p ${DIST}
	cp -R articles.html index.html LICENSE Makefile rss.xml \
	       sbrs sbrs.1 styles.css template.html ${DIST}
	tar -cf ${DIST}.tar ${DIST}
	gzip ${DIST}.tar
	rm -rf ${DIST}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin ${DESTDIR}${MANPREFIX}/man1
	cp -f ${SH} ${DESTDIR}${PREFIX}/bin
	cp -f ${MAN1} ${DESTDIR}${MANPREFIX}/man1
	sed "s/VERSION/${VERSION}/g" < ${MAN1} > ${DESTDIR}${MANPREFIX}/man1/${MAN1}
	chmod 755 ${DESTDIR}${PREFIX}/bin/${SH}
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/${MAN1}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/${SH} \
		${DESTDIR}${MANPREFIX}/man1/${MAN1}

clean:
	rm -f ${DIST}.tar.gz

.PHONY: all clean dist install uninstall
