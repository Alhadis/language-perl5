#!/usr/bin/env perl
use strict;
use warnings;
use autodie;

# Italic
=pod

Normal I<italic> normal

Normal I<italic text> normal

Parameter redo I<LABEL>

I<italic>

I<italic text>

I<LABEL>

=cut


# Bold
=pod

perl's B<-n> switch

some systems provide a B<chfn> for that

be B<careful!>

and that feature is known as B<autovivification>

B<-n>

B<careful!>

B<chfn>

B<autovivification>

=cut


# Monospaced
=pod

Text C<gmtime($^T)>

Text C<drwxr-xr-x>

C<gmtime($^T)>

C<drwxr-xr-x>

=cut



# Links
=pod

1. Perldoc (Perl manual-pages)

ABC L<name> XYZ

ABC L<Net::Ping> XYZ


2. Unix manpages
L<grep(1)>

L<grep(7abc)>

L<crontab(5)>


3. Unix manpages with label
Refer to L<the grep(1) manual page|grep(1)>

L<grok|grep(7abc)>

L<tabcron|crontab(5)>


4. Perldoc with section reference

L<name/section>

L<name/"section">

L<perlsyn/"For Loops">

L<perlvar/$.>

L<perlvar/"$.">

L<perlsyn/For Loops>

L<perlsyn/"For Loops">


5. Internal section reference (reference within same document)

L</"section name">

L</section-name>

L</"Object Methods">


6. Perldoc with alternative text

L<name>

L<text|name>

L<Perl Error Messages|perldiag>

L<text|name/"quoted section">

L<text|name/unquoted-section>

L<text|/"section">

L<text|/section>

L<text|"section">

L<postfix "if"|perlsyn/"Statement Modifiers">

L<text|/"section">

L<text|/section>

L<text|"section">


# 7. Web address

L<scheme:...>

L<text|scheme:path/stuff>

L<https://www.perl.org/>

L<The Perl Home Page|http://www.perl.org/>

L<git+https://github.com/Alhadis/language-roff.git>

=cut
