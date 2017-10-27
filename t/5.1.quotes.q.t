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
/,             # Comment
q !
	String \t \r\n
	${not} \! \\\! \!
	${not} $interpolated
!,             # Comment
q,
	String \t \r\n
	${not} \, \\\, \,
	${not} $interpolated
,,             # Comment
q {
	if ($interpolated) {
		print "No";
	}
},             # Comment
q (
	print ((( $interpolated )))
	if ("\)" ne "\(")
),             # Comment
q <
	print <<< $interpolated >>>
	if ("\>" ne "\<") <>
>,             # Comment
q[
	print [[[ $interpolated ]]]
	if ("\]" ne "\[") []
],             # Comment


q#String \# not-${interpolated} \# String#, # Comment

q   # Comment / # Comment #
# Comment
/
	String \t \r\n
	${not} \/ \\\/ \/
	${not} $interpolated
/,             # Comment

q   # Comment ! # Comment #
	 
	 # Comment
	 
!
	String \t \r\n
	${not} \! \\\! \!
	${not} $interpolated
!,             # Comment

q   # Comment , # Comment #
	 
	 # Comment
	 

,
	String \t \r\n
	${not} \, \\\, \,
	${not} $interpolated
,,             # Comment

q   # Comment {} # Comment #
	 
	 # Comment
	 
{
	if ($interpolated) {
		print "No";
	}
},  # Comment

q   # Comment () # Comment #
	 
	 # Comment
	 
(
	print ((( $interpolated )))
	if ("\)" ne "\(")
),  # Comment

q   # Comment <> # Comment #
	 
	 # Comment
	 
<
	print <<< $interpolated >>>
	if ("\>" ne "\<") <>
>,  # Comment

q   # Comment [] # Comment #
	 
	 # Comment
	 
[
	print [[[ $interpolated ]]]
	if ("\]" ne "\[") []
],  # Comment


q!I said, "You said, 'She said it.'"!,


"\n";
