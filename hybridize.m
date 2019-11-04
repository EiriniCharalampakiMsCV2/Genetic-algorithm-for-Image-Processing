%% hybridize crosses two DNA strands to make two new ones.
%    Input, integer M, N, the dimensions of the DNA, which are ordinarily
%    56 and 32.  However, for testing, we allow these values to be varied.
%
%    Input, integer DNA1(56,32), DNA2(56,32), the parent DNA.
%
%    Output, integer DNA3(56,32), DNA4(56,32), the child DNA.

function [ dna3, dna4 ] = hybridize ( m, n, dna1, dna2 )
  mn = m * n;
  string1 = reshape ( dna1, 1, mn );
  string2 = reshape ( dna2, 1, mn ); 

%  Choose a random position between 1 and MN;

  i = randi ( [ 1, mn ], 1, 1 ); % Pseudorandom integers from a uniform discrete distribution.

%  Splice the DNA.

  string3 = [ string1(1:i), string2(i+1:mn) ];
  string4 = [ string2(1:i), string1(i+1:mn) ];

%  Reshape the strings as arrays.

  dna3 = reshape ( string3, m, n );
  dna4 = reshape ( string4, m, n );

  return
end
