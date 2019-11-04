%% genes_to_rgb creates an RGB image from DNA.
% This function computes the RGB image by averaging the R, G, and B
%    values from each block.
% Parameters: Input, integer DNA(56,32), the 8 bits of the 7 "genes" of the
%    32 "chromosomes" of the DNA.
%  Output, uint8 RGB(256,256,3), the RGB information.

function rgb = genes_to_rgb(dna)
  c = zeros ( 256, 256 );
  rgb = zeros ( 256, 256, 3 );

  for j = 1 : 32
 % string_to_integer converts a string of 8 binary digits to an integer
    x1 = string_to_integer ( dna(1:8,j) ); 
    y1 = string_to_integer ( dna(9:16,j) );
    x2 = string_to_integer ( dna(17:24,j) );
    y2 = string_to_integer ( dna(25:32,j) );
    r = string_to_integer ( dna(33:40,j) );
    g = string_to_integer ( dna(41:48,j) );
    b = string_to_integer ( dna(49:56,j) );

    xlo = min ( x1, x2 ) + 1;
    xhi = max ( x1, x2 ) + 1;
    ylo = min ( y1, y2 ) + 1;
    yhi = max ( y1, y2 ) + 1;

    c(xlo:xhi,ylo:yhi) = c(xlo:xhi,ylo:yhi) + 1;

    rgb(xlo:xhi,ylo:yhi,1) = rgb(xlo:xhi,ylo:yhi,1) + r;
    rgb(xlo:xhi,ylo:yhi,2) = rgb(xlo:xhi,ylo:yhi,2) + g;
    rgb(xlo:xhi,ylo:yhi,3) = rgb(xlo:xhi,ylo:yhi,3) + b;

  end

  rgb(1:256,1:256,1) = rgb(1:256,1:256,1) ./ c(1:256,1:256);
  rgb(1:256,1:256,2) = rgb(1:256,1:256,2) ./ c(1:256,1:256);
  rgb(1:256,1:256,3) = rgb(1:256,1:256,3) ./ c(1:256,1:256);
  rgb = uint8 ( rgb );

  return
end