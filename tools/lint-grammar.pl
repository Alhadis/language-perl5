#!/usr/bin/env perl
use strict;
use warnings;
use autodie;
use v5.14;
use utf8;

no warnings qw<utf8 experimental::smartmatch>;
use feature qw<unicode_strings>;
use charnames ":full", ":alias" => {
	ELLIPSIS => "HORIZONTAL ELLIPSIS"
};


# ANSI codes for coloured output
my %SGR = (
	grey  => "\e[38;5;8m",
	red   => "\e[38;5;9m",
	green => "\e[38;5;10m",
	punct => "\e[38;5;238m",
	off   => "\e[0m",
);
map {$SGR{$_} = ""} %SGR unless -t 1;

# Nothing to process? Bail.
if($#ARGV < 0 && -t 0){
	say $SGR{grey}, "Usage${SGR{punct}}:${SGR{off}} $0 [files]";
	exit 1;
}


my $totalErrors = 0;
my $totalFiles = 0;
$/ = undef;

say $SGR{grey}, "Linting grammars\N{ELLIPSIS}", "$SGR{off}";
while(<>){
	my $errors = 0;
	my %rules  = m/^\t(\w+)(:)/gm;
	my @refs   = m/"#\K\w+/g;
	my $output = "";
	for (@refs) {
		next if $rules{$_};
		$output .= "  Undefined: #$_\n";
		++$errors;
	}
	my $source = ($ARGV eq "-" and ! -t 0) ? "Standard input" : $ARGV;
	if($errors > 0){
		++$totalFiles;
		$totalErrors += $errors;
		print $SGR{red}, "\N{BALLOT X} ${source}${SGR{off}}\n${output}";
	}
	else{
		print $SGR{green}, "\N{CHECK MARK} ${source}${SGR{off}}\n";
	}
}

given($totalErrors){
	when (0) { say "No errors found" }
	when (1) { say "Found 1 error in 1 file" }
	default  { say "Found $totalErrors errors in $totalFiles files" }
}

exit 1 if $totalErrors > 0;
