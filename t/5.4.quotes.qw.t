#!/usr/bin/env perl -w
use strict; use autodie; use v5.14; use utf8;
$_ = ""; my $is = ""; my $not = "", my $interpolated = ""; say join "\n",


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


"\n";
