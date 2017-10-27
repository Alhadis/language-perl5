# vim: ts=4 noexpandtab
use strict;
use warnings;
use autodie;
use utf8;


# Basic commands

=pod

=head1 Heading 1

=head2 Heading 2

=head3 Heading 3

=head4 Heading 4

Paragraph

=over indentlevel

=item Stuff and whatnot

=back

Paragraph: opening sentence.
Second sentence of above paragraph.

=over indentlevel

=item * Bulleted stuff.

=item * Bulleted stuff.
Another line featuring a continuation of
aforementioned stuff.

=item * Bulleted whatnot
Yet more unsolicited barrages of whanot.

=back

Paragraph wrapping
=over indentlevel
and wrapping over
=item * Bulleted stuff.
and also this
=item * Bulleted stuff.
And all the usual bull(eted)crap.
	wew
	lad
=item * Bulleted whatnot
OKAY DONE,
LOL.

	Code example
	perl =~ Stuff
	More stuff
	You get it. Right?

And all the usual bull(eted)crap.

	wew
	lad
ENDVERB

End of nonsense.

=back


Paragraph

=over indentlevel

=item 1. Numbered stuff

=item 2. More whatnot

=item 3. Still a better markup language than Markdown.
Duh.

=back

=cut




# Encoding

=pod

=encoding latin1

=encoding utf8

=encoding koi8-r

=encoding ShiftJIS

=encoding big5


# Contiguous =encoding statements without blank lines

=encoding latin1
=encoding utf8
=encoding koi8-r
=encoding ShiftJIS
=encoding big5

=cut


# Embedded highlighting

=pod

1. HTML

=for html <br />
<img src="figure1.png" />
<br />

Pod paragraph

=begin html From 1995
(or something)

<BR>Figure 1.<BR><IMG SRC="figure1.bmp"><BR>

=end html

Pod paragraph


2. Roff

=for roff .TH ATOM-ROFF 1
.SH NAME
.B atom-roff \-\-
.ex \" Next!

Pod paragraph


=for man .TH ATOM-ROFF 1

.SH POD
.B pod-text \-\-
.ex \" This shouldn't be Roff

Pod paragraph


=begin roff
Ignored

.TH ATOM-ROFF 1
.  de XS \\n(.X \" etc
.  UR https://github.com/Alhadis/language-roff
=end roff
\" Still roff

=begin man \n[still-roff]

.TH ATOM-ROFF 5
.B Go install \fI`language-roff`\fP.
.ps -0.5n
.I (You\(cqll be glad you did)
=end man
\" Still roff

=end roff



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
=for text Plain old
plain-text

=begin text
  ---------------
  |  foo        |
  |        bar  |
  ---------------

^^^^ Figure 1. ^^^^
=end text
Still text…

=end text

… but not anymore!



6. Comment-line
=for comment Ignored in formatted documentation

Pod

=for comment Ignored
In
formatted
documentation

Pod


# Actual Pod
=for :actualpod Stuff
=begin :actualpod
=command Stuff, etc
=end :actualpod

=cut

# Back to Perl
my $variable = 2 + 4;
