#!/usr/bin/env perl
use strict;
use warnings;
use autodie;
use v5.14;


=head1 Legal syntax:

E<lt>

E<Z<>lt>

E<Z<>Z<>lt>

E<Z<>Z<>Z<>Z<>lt>

E<ltZ<>>

E<ltZ<>Z<>Z<>Z<>>

E<Z<>Z<>Z<>Z<>ltZ<>Z<>Z<>Z<>>

=cut


=head1 Illegal syntax:

E<   Z<>   lt>

E<Z< >lt>

E<lZ<>t>

E<Z< >Z<>lt>

E<Z<>Z< >Z<>Z< >lt>

E<ltZ< >>

E<ltZ< >Z<>Z< >Z<>>

E<Z< >Z< >Z<>Z< >ltZ< >Z<>Z< >Z<>>

=cut
