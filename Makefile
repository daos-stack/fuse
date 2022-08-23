NAME    := fuse
SRC_EXT := gz

include packaging/Makefile_packaging.mk

# for whatever strange reason, the generic rule in Makefile_packaging.mk
# doesn't work for this file
_topdir/SOURCES/fuse-3.10.2.tar.gz: fuse-3.10.2.tar.gz
	rm -f $@
	ln $< $@