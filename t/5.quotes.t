#!/usr/bin/env perl -w
use strict; use autodie; use v5.14; use utf8;
$_ = ""; my $is = ""; my $not = "", my $interpolated = ""; say join "\n",


# q/string/
q/String \t ${not} \/ \\\/ \/ ${not} $interpolated/,
q!String \t ${not} \! \\\! \! ${not} $interpolated!,
q,String \t ${not} \, \\\, \, $interpolated,,
q{if ($interpolated) { print $interpolated; }},
q(print ((( \) $interpolated \( ))); if "\)" ne "\(" ()),
q<print <<< \> $interpolated \< >>>; if "\>" ne "\<" <>>,
q[print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" []],

q / String \t ${not} \/ \\\/ \/ ${not} $interpolated /,
q ! String \t ${not} \! \\\! \! ${not} $interpolated !,
q , String \t ${not} \, \\\, \, $interpolated,,
q { if ($interpolated) { print $interpolated; } },
q ( print ((( \) $interpolated \( ))); if "\)" ne "\(" () ),
q < print <<< \> $interpolated \< >>>; if "\>" ne "\<" <> >,
q [ print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" [] ],

q /
	String \t \r\n
	${not} \/ \\\/ \/
	${not} $interpolated
/,
q !
	String \t \r\n
	${not} \! \\\! \!
	${not} $interpolated
!,
q,
	String \t \r\n
	${not} \, \\\, \,
	${not} $interpolated
,,
q {
	if ($interpolated) {
		print "No";
	}
},
q (
	print ((( $interpolated )))
	if ("\)" ne "\(")
),
q <
	print <<< $interpolated >>>
	if ("\>" ne "\<") <>
>,
q[
	print [[[ $interpolated ]]]
	if ("\]" ne "\[") []
],



# qq/interpolated string/
qq/String \t ${is} \/ \\\/ \/ ${is} $interpolated/,
qq!String \t ${is} \! \\\! \! ${is} $interpolated!,
qq,String \t ${is} \, \\\, \, $interpolated,,
qq{if ($interpolated) { print $interpolated; }},
qq(print ((( \) $interpolated \( ))); if "\)" ne "\(" ()),
qq<print <<< \> $interpolated \< >>>; if "\>" ne "\<" <>>,
qq[print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" []],

qq / String \t ${is} \/ \\\/ \/ ${is} $interpolated /,
qq ! String \t ${is} \! \\\! \! ${is} $interpolated !,
qq , String \t ${is} \, \\\, \, $interpolated,,
qq { if ($interpolated) { print $interpolated; } },
qq ( print ((( \) $interpolated \( ))); if "\)" ne "\(" () ),
qq < print <<< \> $interpolated \< >>>; if "\>" ne "\<" <> >,
qq [ print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" [] ],

qq /
	String \t \r\n
	${is} \/ \\\/ \/
	${is} $interpolated
/,
qq !
	String \t \r\n
	${is} \! \\\! \!
	${is} $interpolated
!,
qq,
	String \t
	${is} \, \\\, \,
	${is} $interpolated
,,
qq {
	if ($interpolated) {
		print "Yes";
	}
},
qq (
	print ((( $interpolated )))
	if ("\)" ne "\(")
),
qq <
	print <<< $interpolated >>>
	if ("\>" ne "\<") <>
>,
qq[
	print [[[ $interpolated ]]]
	if ("\]" ne "\[") []
],

qq'String \t ${is} \' \\\' \' ${is} $interpolated',
qq 'String \t ${is} \' \\\' \' ${is} $interpolated',
qq '
	String \t \r\n
	${is} \' \\\' \'
	${is} $interpolated
',



# qx/command execution/
qx/String \t ${is} \/ \\\/ \/ ${is} $interpolated/,
qx!String \t ${is} \! \\\! \! ${is} $interpolated!,
qx,String \t ${is} \, \\\, \, $interpolated,,
qx{if ($interpolated) { print $interpolated; }},
qx(print ((( \) $interpolated \( ))); if "\)" ne "\(" ()),
qx<print <<< \> $interpolated \< >>>; if "\>" ne "\<" <>>,
qx[print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" []],

qx / String \t ${is} \/ \\\/ \/ ${is} $interpolated /,
qx ! String \t ${is} \! \\\! \! ${is} $interpolated !,
qx , String \t ${is} \, \\\, \, $interpolated,,
qx { if ($interpolated) { print $interpolated; } },
qx ( print ((( \) $interpolated \( ))); if "\)" ne "\(" () ),
qx < print <<< \> $interpolated \< >>>; if "\>" ne "\<" <> >,
qx [ print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" [] ],

qx /
	String \t \r\n
	${is} \/ \\\/ \/
	${is} $interpolated
/,
qx !
	String \t \r\n
	${is} \! \\\! \!
	${is} $interpolated
!,
qx,
	String \t \r\n
	${is} \, \\\, \,
	${is} $interpolated
,,
qx {
	if ($interpolated) {
		print "Gotcha!";
	}
},
qx (
	print ((( \) $interpolated \( )))
	if ("\)" ne "\(")
),
qx <
	print <<< \> $interpolated \< >>>
	if ("\>" ne "\<") <>
>,
qx[
	print [[[ \] $interpolated \[ ]]]
	if ("\]" ne "\[") []
],

# qx'not interpolated'
qx'String \t ${is} \' \\\' \' ${not} $interpolated',
qx 'String \t ${is} \' \\\' \' ${not} $interpolated',
qx '
	String \t \r\n
	${not} \' \\\' \'
	${not} $interpolated
',



# qw(quote words)
qw/String \t ${not} \/ \\\/ \/ ${not} $interpolated/,
qw!String \t ${not} \! \\\! \! ${not} $interpolated!,
qw~String \t ${not} \~ \\\~ \~ $interpolated~,
qw{if ($interpolated) { print $interpolated; }},
qw(print ((( \) $interpolated \( ))); if "\)" ne "\(" ()),
qw<print <<< \> $interpolated \< >>>; if "\>" ne "\<" <>>,
qw[print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" []],

qw / String \t ${not} \/ \\\/ \/ ${not} $interpolated /,
qw ! String \t ${not} \! \\\! \! ${not} $interpolated !,
qw ~String \t ${not} \~ \\\~ \~ $interpolated ~,
qw { if ($interpolated) { print $interpolated; } },
qw ( print ((( \) $interpolated \( ))); if "\)" ne "\(" () ),
qw < print <<< \> $interpolated \< >>>; if "\>" ne "\<" <> >,
qw [ print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" [] ],

qw /
	String \t \r\n
	${not} \/ \\\/ \/
	${not} $interpolated
/,
qw !
	String \t \r\n
	${not} \! \\\! \!
	${not} $interpolated
!,
qw~
	String \t \r\n
	${not} \~ \\\~ \~
	${not} $interpolated
~,
qw {
	if ($interpolated) {
		print "No";
	}
},
qw (
	print ((( \) $interpolated \( )))
	if ("\)" ne "\(")
),
qw <
	print <<< \> $interpolated \< >>>
	if ("\>" ne "\<") <>
>,
qw[
	print [[[ \] $interpolated \[ ]]]
	if ("\]" ne "\[") []
],

# qw'not interpolated'
qw'String \t ${is} \' \\\' \' ${not} $interpolated',
qw 'String \t ${is} \' \\\' \' ${not} $interpolated',
qw '
	String \t \r\n
	${not} \' \\\' \'
	${not} $interpolated
',


//,      m/match/,
s///,    s/find/replace/,
tr/a/A/, y/a/A/,

qq'\$before \n XYZ' =~
qr'$uninterpolated',

qq/ABC \n $interpolated/ =~
qr/$interpolated/,


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
