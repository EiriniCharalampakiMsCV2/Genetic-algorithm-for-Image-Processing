%% random_dna creates a random set of DNA.
%    Output, integer DNA(56,32), the 8 bits of the 7 "genes" of the
%    32 "chromosomes" of the DNA.
%
function dna = random_dna ()

  dna = randi ( [ 0, 1 ], 56, 32 );

  return
end