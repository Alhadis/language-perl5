#!/usr/bin/env perl -w
use strict; use autodie; use v5.14; use utf8;
$_ = ""; my $is = ""; my $not = "", my $interpolated = ""; say join "\n",


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
	String \t \r\n       # String
	${is} \/ \\\/ \/     # String
	${is} $interpolated  # String
/,                      # Comment
qq !
	String \t \r\n
	${is} \! \\\! \!
	${is} $interpolated
!,                      # Comment
qq,
	String \t
	${is} \, \\\, \,
	${is} $interpolated
,,                      # Comment
qq {
	if ($interpolated) {
		print "Yes";
	}
},                      # Comment
qq (
	print ((( $interpolated ))) # String
	if ("\)" ne "\(")           # String
),          # Comment
qq <
	print <<< $interpolated >>>
	if ("\>" ne "\<") <>
>,             # Comment
qq[
	print [[[ $interpolated ]]]
	if ("\]" ne "\[") []
],             # Comment

qq'String \t ${is} \' \\\' \' ${is} $interpolated', # Comment
qq 'String \t ${is} \' \\\' \' ${is} $interpolated', # Comment
qq '
	String \t \r\n         # String
	${is} \' \\\' \'       # String
	${is} $interpolated    # String
',            # Comment


qq# String $interpolated String#, # Comment

qq   # Comment / # Comment #
	 
	 # Comment
	 
/
	String \t \r\n
	${is} \/ \\\/ \/
	${is} $interpolated
/,   # Comment

qq   # Comment ! # Comment #
	 
	 # Comment
	 
!
	String \t \r\n
	${is} \! \\\! \!
	${is} $interpolated
!,  # Comment

qq   # Comment , # Comment #
	 
	 # Comment, Comment
	 
,
	String \t \r\n
	${is} \, \\\, \,
	${is} $interpolated
,,  # Comment

qq   # Comment {} # Comment #
	 
	 # {Comment}
	 
{
	if ($interpolated) {
		print "Yes";
	}
},  # Comment

qq   # Comment () # Comment #
	 
	 # (((Comment)))
	 
(
	print ((( $interpolated )))
	if ("\)" ne "\(")
),  # Comment

qq   # Comment <> # Comment #
	 
	 # <<<Comment>>>
	 
<
	print <<< $interpolated >>>
	if ("\>" ne "\<") <>
>,  # Comment

qq   # Comment [] # Comment #
	 
	 # [[[Comment]]]
	 
[
	print [[[ $interpolated ]]]
	if ("\]" ne "\[") []
],  # Comment


qq(Can't we \Uget\E some "good" $interpolated?),


"\n";
