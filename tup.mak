all: .tup
	@# Tup handles the building of all files, and the processing too.
	@# For information on this, please consider reading the tup manual,
	@# and the files "Tupfile" and "Tuprules.tup".
	@tup upd


bld/tup.config:
	@mkdir -p bld
	@echo "CONFIG_CC=gcc" > bld/tup.config

.tup: bld/tup.config
	@tup init

clean: 
	rm -rf .tup bld
