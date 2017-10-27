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
