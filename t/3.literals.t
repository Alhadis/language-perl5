#!/usr/bin/env perl -w
use strict; use autodie; use v5.14;


# Integer
say  12345             ; # Unsigned
say -12345             ; # Signed: Negative
say +12345             ; # Signed: Positive

# Floating point
say  12345.67          ; # Unsigned
say -12345.67          ; # Signed: Negative
say +12345.67          ; # Signed: Positive

# Floating point without leading digits
say  .67               ; # Unsigned
say -.67               ; # Signed: Negative
say +.67               ; # Signed: Positive

# Floating point without trailing digits
say  12345.            ; # Unsigned
say -12345.            ; # Signed: Negative
say +12345.            ; # Signed: Positive


# Scientific notation, float
say  1.2e34,   1.2E34  ; # Unsigned
say -1.2e34,  -1.2E34  ; # Signed: Negative
say +1.2e34,  +1.2E34  ; # Signed: Positive

# Scientific notation, float without leading digits
say  .12e34,   .12E34  ; # Unsigned
say -.12e34,  -.12E34  ; # Signed: Negative
say +.12e34,  +.12E34  ; # Signed: Positive

# Scientific notation, float without trailing digits
say  12.e34,   12.E34  ; # Unsigned
say -12.e34,  -12.E34  ; # Signed: Negative
say +12.e34,  +12.E34  ; # Signed: Positive

# Scientific notation, integer
say  12e34,     12E34  ; # Unsigned
say -12e34,    -12E34  ; # Signed: Negatve
say +12e34,    +12E34  ; # Signed: Positive


# Invalid
my $invalid_do_not_run = <<'PERL';
	 e12,   E12;
	-e12,  -E12;
	+e12,  +E12;

	 12e,   12E;
	-12e,  -12E;
	+12e,  +12E;
PERL




# Integer with thousand separators
say  4_294_967_296;      # Unsigned
say -4_294_967_296;      # Signed: Negative
say +4_294_967_296;      # Signed: Positive


say 0377;            # Octal
say 0xffff;          # Hexadecimal
say 0b1100_0000;     # Binary
