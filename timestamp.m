%% TIMESTAMP prints the current YMDHMS date as a timestamp.

function timestamp ( )
  t = now;
  c = datevec ( t );
  s = datestr ( c, 0 );
  fprintf ( 1, '%s\n', s );

  return
end