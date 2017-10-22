all: test

# Assert tests are valid Perl
tests := $(wildcard t/*.t)
$(tests):
	@./tools/check-syntax.sh $@
test: $(tests)
.PHONY: test $(tests)
