%% image_write writes an I4MAT file.
%    An I4MAT is an array of I4's.
%Parameters: Input, string OUTPUT_FILENAME, the output filename.
%Input, integer M, the spatial dimension.
%Input, integer N, the number of points.
%Input, integer TABLE(M,N), the points.
%

function image_write ( output_filename, m, n, table )

%  Open the file.

  output_unit = fopen ( output_filename, 'wt' );

  if ( output_unit < 0 ) 
    fprintf ( 1, '\n' );
    fprintf ( 1, 'I4MAT_WRITE - Error!\n' );
    fprintf ( 1, '  Could not open the output file.\n' );
    error ( 'I4MAT_WRITE - Error!' );
  end

%  Write the data.

  for j = 1 : n
    for i = 1 : m
      fprintf ( output_unit, '  %12d', round ( table(i,j) ) );
    end
    fprintf ( output_unit, '\n' );
  end

%  Close the file.
%
  fclose ( output_unit );

  return
end