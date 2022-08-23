NAME    := fuse
SRC_EXT := gz

include packaging/Makefile_packaging.mk

FUSE3_VERSION := 3.3.0
# for whatever strange reason, the generic rule in Makefile_packaging.mk
# doesn't work for this file
_topdir/SOURCES/fuse-$(FUSE3_VERSION).tar.gz: fuse-$(FUSE3_VERSION).tar.gz
	rm -f $@
	ln $< $@