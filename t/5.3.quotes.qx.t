#!/usr/bin/env perl -w
use strict; use autodie; use v5.14; use utf8;
$_ = ""; my $is = ""; my $not = "", my $interpolated = ""; say join "\n",


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


"\n";
