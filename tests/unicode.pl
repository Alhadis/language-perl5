my $scalar   = $days;
my $arrayRef = $days[28];
my $hashRef  = $days{"Feb"};

${days}             ; # Same as $days but unambiguous before alphanumerics
my ${               ; # This may span multiple lines:
	otherValue
} = $ref            ; # Legal code
$otherValue = ${
	ref
}                   ; # Also legal

$Dog::days          ; # Different $days variable, in the Dog package
$#days              ; # Last index of array @days
$days->[28]         ; # 29th element of array pointed to by reference $days
$days[0][2]         ; # Multidimensional array
$days{2000}{"Feb"}  ; # Multidimensional hash
$days{2000,"Feb"}   ; # Multidimensional hash emulation


# Unicode tests
use v5.14;          ; # includes the unicode_strings feature
use utf8;           ; # handles UTF–8 literals

# a few character sets
my @IsO = qw( Latin1 Latin2 Latin15 );
my @μsoft = qw( cp852 cp1251 cp1252 );
my @ = qw( koi8–f koi8–u koi8–r );

# whether to include answers that return no results
my $INCLUÍR_NINGUNOS = 0;

# whether diacritics matter
my $SI_IMPORTAN_MARCAS_DIACRÍTICAS = 0;

# think of << as the "hasta" operator :)
my @ciudades_españolas = ordenar_a_la_española(<<'LA_ÚLTIMA' =~ /\S.*\S/g);
.....
.....
LA_ÚLTIMA

my $déjà_imprimée; # le nom d'une ville

# Greek hypermegas
my @ὑπέρμεγας = ( );


# Ok, now we’re just showing off :–)
my   ($input);
