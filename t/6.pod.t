# vim: ts=4 noexpandtab
use strict;
use warnings;
use autodie;
use utf8;

=pod
=head1 Heading 1
=head2 Heading 2
=head3 Heading 3
=head4 Heading 4

=over indentlevel
=item Stuff and whatnot
=back

=over indentlevel
=item * Bulleted stuff
=item * Bulleted whatnot
=back

=over indentlevel
=item 1. Numbered stuff
=item 2. More whatnot
=back

=begin format
=end format
=for format text...
=encoding type


=encoding latin1
=encoding utf8
=encoding koi8-r
=encoding ShiftJIS
=encoding big5


1. HTML
=for html <br><IMG SRC="figure1.png"><br>

=begin html
<br>Figure 1.<br><IMG SRC="figure1.png"><br>
=end html


2. Roff
=for roff .TH ATOM-ROFF 1
=for man .TH ATOM-ROFF 1

=begin roff
.TH ATOM-ROFF 1
.  de XS \\n(.X \" etc
.  UR https://github.com/Alhadis/language-roff
=end roff

=begin man
.TH ATOM-ROFF 5
.B Go install \fI`language-roff`\fP.
.ps -0.5n
.I (You\(cqll be glad you did)
=end man


3. LaTeX
=for latex \latex
=begin latex
I don't know LaTeX, sorry. \lel
=end latex


4. TeX
=for tex \tex
=begin tex
Or TeX, for that matter. \loltex
=end tex


5. Plain-text
=for text Plain old plain-text

=begin text
  ---------------
  |  foo        |
  |        bar  |
  ---------------

^^^^ Figure 1. ^^^^
=end text


6. Comment-line
=for comment Ignored in formatted documentation


# Actual Pod
=for :actualpod Stuff
=begin :actualpod
=command Stuff, etc
=end :actualpod

=cut

# Back to Perl
my $variable = 2 + 4;
