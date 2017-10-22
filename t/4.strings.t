#!/usr/bin/env perl -w
use strict; use autodie; use v5.14; use utf8; use charnames qw/:full :short/; say join "\n",


# Single-quoted
'ABC XYZ',
'ABC \' XYZ',
'ABC \\ XYZ',
'\\\\\\\'\'',
'ABC
XYZ',


# Double-quoted
"ABC XYZ",
"ABC \' XYZ",
"ABC \\ XYZ",
"\\\\\\\'\'",
"ABC
XYZ",

"\" \n \r \t \f \b \a \e \n\"",
"\075 \o{75} \o{075}",
"\o{7_5} \o{07_5}",
"\o{7_5} \o{7_5} \o{0_75}",
"\x3D \x{3D} \x{26_3A}",
"\x{3_D} \x{0000_003D}",
"\N{U+3D} \N{U+00_3D}",
"\N{GREEK SMALL LETTER SIGMA}",
"\N{greek:Sigma}",
"\cC \cZ \c[ \c?",
"<\cA> <\cZ> <\ca> <\cz>",

"\uwot",
"\u\"",
"\lolwat",

"abc \U abc xyz m${0} xyz \E xyz",
"abc \U abc \Eaa\L xYzM${0}? \E xyz",
"abc \F FoldCase ${0}? \E xyz",

"\n";
# Invalid
my $invalid_do_not_run = <<'PERL';
	"\o{_75} \o{75_}",
	"\o{7i777772}",
	"\o{_7_5_} \o{_7_5} \o{7_5} \o{75_}",
	"\o{7",
	"\X3F",
	
	"\x{0xBAAAAAAAAAAD}",
	"BAD: \x{_3D} \x{3_D_}",
	"BAD: \x{3Dinvalid}",
	"BAD: \x{_3_D_} \x{_3_D} \x{3_D} \x{3D_}",
	"\N{u+BAD} \N{u+BA_AD}",
	
	"unused \E escape",
PERL
