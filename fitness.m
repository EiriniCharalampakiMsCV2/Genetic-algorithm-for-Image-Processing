%% fitness scores image B as a match for image A.
%Parameters: Input, integer M, N, K, the dimensions of the images.
%Input, uint8 A(M,N,K), the original image.
%Input, uint8 B(M,N,K), the approximate image.
%Output, int SCORE, a score for the matching.

function score = fitness ( m, n, k, a, b )

  score = sum (sum (sum (abs (double (a) - double ( b )))));

  return
end

