#!/usr/bin/env perl -w
use strict; use autodie; use v5.14; use utf8;
my $interpolated   = 1;
my $uninterpolated = 2;
my $condition      = 3;
my $before         = "ABC";
my $after          = "XYZ";
$_ = $before;
say join "\n",

q /String, $uninterpolated/,
q !String!, q,STRING $uninterpolated,,
q { if ($condition) { print "Gotcha!"; } },
q ( print(("Gotcha!")); if ((( $condition ))) ),
q < print<<"Gotcha!">>; if <<< $condition >>> >,
q [ print[["Gotcha!"]]; if [[[ $condition ]]] ],
q /
	String,
	$uninterpolated
/,
q !
	Str
	ing
!,
q,
	STRING
	$uninterpolated
,,
q {
	if ($condition) {
		print "Gotcha!";
	}
},
q (
	print(("Gotcha!"));
	if ((( $condition )))
),
q <
	print<<"Gotcha!">>;
	if <<< $condition >>>
>,
q[
	print[["Gotcha!"]];
	if [[[ $condition ]]]
],

qq /String, $interpolated/,
qq { if ($condition) { print "Gotcha!"; } },
qq ( print(("Gotcha!")); if ((( $condition ))) ),
qq < print<<"Gotcha!">>; if <<< $condition >>> >,
qq [ print[["Gotcha!"]]; if [[[ $condition ]]] ],
qq /
	String,
	$interpolated
/,
qq !
	Str
	ing
!,
qq,
	STRING
	$interpolated
,,
qq {
	if ($condition) {
		print "Gotcha!";
	}
},
qq (
	print(("Gotcha!"));
	if ((( $condition )))
),
qq <
	print<<"Gotcha!">>;
	if <<< $condition >>>
>,
qq[
	print[["Gotcha!"]];
	if [[[ $condition ]]]
],

qx /echo "Also $interpolated"/,
qx { echo "{{{$condition}}}" },
qx ( echo '((( $condition )))' ),
qx < echo "<<< $condition >>>"; >,
qx [ echo "[[[ $condition ]]]"; ],
qx {
	echo "{{{$condition}}}"
},
qx (
	echo '((( $condition )))'
),
qx <
	echo "<<< $condition >>>";
>,
qx [
	echo "[[[ $condition ]]]";
],


(),      qw/word list $uninterpolated/,
//,      m/match/,
s///,    s/find/replace/,
tr/a/A/, y/a/A/,

qq'\$before \n XYZ' =~ qr'$before',
qq/ABC \n $after/ =~ qr/$after/,


q!I said, "You said, 'She said it.'"!,
qq(Can't we \Uget\E some "good" $interpolated?),

	s<foo>(bar),
	tr(a–f)[A–F],
	    tr (a–f)
	       [A–F],

	s {foo}   # Replace foo
	  {bar},  #    with bar.

	tr [a–f]  # Transliterate lowercase hex
	   [A–F], #            to uppercase hex

"\n";
