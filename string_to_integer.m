%% string_to_integer converts a string of 8 binary digits to an integer.
%
%       B      VALUE
%    --------  -----
%    00000000      0
%    00000001      1
%    00000010      2
%    ...
%    11111111    255
%
%  Parameters: Input, integer B8(8), the binary string of 0's and 1's.
% Output, integer VALUE, the value of the string as an integer.
%

function value = string_to_integer (b8)
  value = 0;
  for i = 1 : 8
    value = 2 * value + b8(i);
  end

  return
end

  