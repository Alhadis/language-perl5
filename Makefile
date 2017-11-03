all: lint test

# Check for errors in grammar source
lint: $(wildcard grammars/*.cson)
	@./tools/lint-grammar.pl $^
.PHONY: lint

# Assert tests are valid Perl
tests := $(wildcard t/*.t)
$(tests):
	@./tools/check-syntax.sh $@
test: $(tests)
.PHONY: test $(tests)
