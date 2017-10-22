all: test

# Assert tests are valid Perl
tests := $(wildcard t/*.t)
$(tests):
	@perl -c ./$@
	@if [ -x "./$@" ]; then ./$@; fi
test: $(tests)
.PHONY: test $(tests)
