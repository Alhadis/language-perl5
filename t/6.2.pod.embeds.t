#!/usr/bin/env perl
use strict;
use warnings;
use autodie;


# Embedded HTML
=pod

Paragraph

=begin html
<ignored>

HTML text.

<code>
=end html
=end html
</code>

<html>This should still be HTML.</html>

<style> body { } </style>

<code>

=end html

<html>But this should be Pod.</html>

=cut



# Embedded Roff
=pod

Paragraph

=head 1

=begin roff
<ignored>

.TH ATOM-ROFF 1
.SH NAME
.B atom-roff
\-\- the only Roff typesetting language you'll ever need.
.SH DESCRIPTION
I broke my back working on this, please install.
=end roff

.\" This should still be Roff
.SH SEE ALSO
roff(7)
.br
.UR https://github.com/Alhadis/language-roff

=end roff

.SH Back to Pod

=cut


my $variable = "Back to Perl";



# Embedded LaTeX
=pod

Paragraph

=begin latex <ignored>
LaTeX source: https://github.com/MartinThoma/LaTeX-examples
</ignored>

\documentclass[varwidth=true, border=2pt]{standalone}
\usepackage{amsmath}
\usepackage{xypic}

\begin{document}
	\begin{equation*}
	  \xymatrix@R+2em@C+2em{
=end latex
	  % Still LaTeX
	  A \ar[r]^-f \ar[d]_-\varphi & B \ar[d]^-\psi \\
	C \ar[r]_-g & D
}
	\end{equation*}
\end{document}

=end latex

Back to Pod

=cut


# Embedded TeX
=pod

Paragraph

=begin tex
<ignored>
TeX source: https://github.com/MartinThoma/LaTeX-examples
</ignored>

\documentclass[a4paper,12pt]{article}
\usepackage{amssymb} % needed for math
\usepackage{amsmath} % needed for math
\usepackage[utf8]{inputenc} % this is needed for german umlauts
=end tex
% This should still be TeX
\usepackage[ngerman]{babel} % this is needed for german umlauts
\usepackage[T1]{fontenc}    % this is needed for correct output of umlauts in pdf
\usepackage[margin=2cm]{geometry} %layout
\usepackage{minted} % needed for the inclusion of source code

=end tex

# Normal Pod

=cut
