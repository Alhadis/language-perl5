#!/usr/bin/env perl -w
use strict; use autodie; use v5.14; use utf8;
no warnings "ambiguous";
$_ = ""; my $is = ""; my $not = "", my $interpolated = ""; say join "\n",


# qr/interpolated string/
qr/String \t $\{is} \/ \\\/ \/ $\{is} $interpolated/,
qr!String \t $\{is} \! \\\! \! $\{is} $interpolated!,
qr,String \t $\{is} \, \\\, \, $interpolated,,
qr{if ($interpolated) { print $interpolated; }},
qr(print ((( \) $interpolated \( ))); if "\)" ne "\(" ()),
qr<print <<< \> $interpolated \< >>>; if "\>" ne "\<" <>>,
qr[print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" []],

qr / String \t $\{is} \/ \\\/ \/ $\{is} $interpolated /,
qr ! String \t $\{is} \! \\\! \! $\{is} $interpolated !,
qr , String \t $\{is} \, \\\, \, $interpolated,,
qr { if ($interpolated) { print $interpolated; } },
qr ( print ((( \) $interpolated \( ))); if "\)" ne "\(" () ),
qr < print <<< \> $interpolated \< >>>; if "\>" ne "\<" <> >,
qr [ print [[[ \] $interpolated \[ ]]]; if "\]" ne "\[" [] ],

qr /
	String \t \r\n       # String
	$\{is} \/ \\\/ \/     # String
	$\{is} $interpolated  # String
/,                      # Comment
qr !
	String \t \r\n
	$\{is} \! \\\! \!
	$\{is} $interpolated
!,                      # Comment
qr,
	String \t
	$\{is} \, \\\, \,
	$\{is} $interpolated
,,                      # Comment
qr {
	if ($interpolated) {
		print "Yes";
	}
},                      # Comment
qr (
	print ((( $interpolated ))) # String
	if ("\)" ne "\(")           # String
),          # Comment
qr <
	print <<< $interpolated >>>
	if ("\>" ne "\<") <>
>,             # Comment
qr[
	print [[[ $interpolated ]]]
	if ("\]" ne "\[") []
],             # Comment

qr'String \t $\{is} \' \\\' \' $\{is} $interpolated', # Comment
qr 'String \t $\{is} \' \\\' \' $\{is} $interpolated', # Comment
qr '
	String \t \r\n         # String
	$\{is} \' \\\' \'       # String
	$\{is} $interpolated    # String
',            # Comment


qr# String $interpolated String#, # Comment

qr   # Comment / # Comment #
	 
	 # Comment
	 
/
	String \t \r\n
	$\{is} \/ \\\/ \/
	$\{is} $interpolated
/,   # Comment

qr   # Comment ! # Comment #
	 
	 # Comment
	 
!
	String \t \r\n
	$\{is} \! \\\! \!
	$\{is} $interpolated
!,  # Comment

qr   # Comment , # Comment #
	 
	 # Comment, Comment
	 
,
	String \t \r\n
	$\{is} \, \\\, \,
	$\{is} $interpolated
,,  # Comment

qr   # Comment {} # Comment #
	 
	 # {Comment}
	 
{
	if ($interpolated) {
		print "Yes";
	}
},  # Comment

qr   # Comment () # Comment #
	 
	 # (((Comment)))
	 
(
	print ((( $interpolated )))
	if ("\)" ne "\(")
),  # Comment

qr   # Comment <> # Comment #
	 
	 # <<<Comment>>>
	 
<
	print <<< $interpolated >>>
	if ("\>" ne "\<") <>
>,  # Comment

qr   # Comment [] # Comment #
	 
	 # [[[Comment]]]
	 
[
	print [[[ $interpolated ]]]
	if ("\]" ne "\[") []
],  # Comment


qq'\$before \n XYZ' =~
qr'$uninterpolated',

qq/ABC \n $interpolated/ =~
qr/$interpolated/,


"\n";
