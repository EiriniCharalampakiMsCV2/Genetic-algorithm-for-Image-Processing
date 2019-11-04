%% Mutate functions mutates a strand of DNA.
%   Input, integer M, N, the dimensions of the DNA, which are normally
%    56 and 32.  However, to simplify testing, we allow these to be variables.
%
%    Input, integer DNA(56,32), the 8 bits of the 7 "genes" of the
%    32 "chromosomes" of the DNA.
%    Output, integer DNA(56,32), the mutated version of the input DNA.
%    One "bit" has been changed.


function dna = mutate ( m, n, dna )

%  Choose a random chromosome between 1 and N.
%
  j = randi ([ 1, n ], 1, 1 );
%
%  Choose a random gene bit between 1 and M.
%
  i = randi ([ 1, m ], 1, 1 );
%
%  Flip the value.
%
  dna(i,j) = 1 - dna(i,j); 

  return
end
