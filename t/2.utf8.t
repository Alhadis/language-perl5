use strict; use autodie; use v5.14; use utf8;


# A few character sets
my @IsO      = qw( Latin1 Latin2 Latin15 );
my @μsoft    = qw( cp852 cp1251 cp1252 );
my @鯉       = qw( koi8–f koi8–u koi8–r );

# Whether to include answers that return no results
my $INCLUÍR_NINGUNOS = 0;

# Whether diacritics matter
my $SI_IMPORTAN_MARCAS_DIACRÍTICAS = 0;

# Think of << as the "hasta" operator :)
my @ciudades_españolas = ordenar_a_la_española(<<'LA_ÚLTIMA' =~ /\S.*\S/g);
.....
.....
LA_ÚLTIMA

my $déjà_imprimée; # le nom d'une ville

# Greek hypermegas
my @ὑπέρμεγας = ( );

# Ok, now we’re just showing off :–)
my $ʇndʇno = uʍopəpᴉƨdn($déjà_imprimée);
