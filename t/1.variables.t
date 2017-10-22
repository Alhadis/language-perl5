my $scalar   = $days;
my $arrayRef = $days[28];
my $hashRef  = $days{"Feb"};

# Scalar terms
${days}             ; # Same as $days but unambiguous before alphanumerics
${                  ; # This may span multiple lines:
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


# List terms
@days               ; # Array containing ($days[0], $days[1], ... $days[N])
@days[3, 4, 5]      ; # Array slice containing ($days[3], $days[4], $days[5])
@days[3..5]         ; # Array slice containing ($days[3], $days[4], $days[5])
@days{"Jan","Feb"}  ; # Hash slice containing ($days{"Jan"},$days{"Feb"})


# Hash terms
%days = (Jan => 31, Feb => $leap ? 29 : 28);


# Qualified names
$unqualified;
$qualified::scalar::reference;
$::qualified;
$::{qualified};
$::{"qualified"};
$::{"qual" . "ified"};
$::{"qual" . $ified};
$main::main::qualified;
$main::main::{"qual" . "ified"};
$main::main::{"qual" . $ified};
$::main::main::qualified;
$::main::main::{"qual" . "ified"};
$::main::main::{"qual" . $ified};


# Qualified names, Archaic form
$qualified'scalar'reference;
$'qualified;
$'main'main'qualified;
$#qualified'scalar'reference;

$qualified::scalar'reference;
$'qualified;
$'main'main::qualified;
$#qualified'scalar::reference;
