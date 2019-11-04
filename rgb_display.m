%% RGB_DISPLAY displays an RGB dataset.
%  Parameters:
%  Input, uint8 RGB(256,256,3), the RGB information.

function rgb_display (rgb, header )
  imshow (rgb)
  title ( header, 'FontSize', 16 )

  filename = sprintf ( '%s.png', header );
  print ( '-dpng', filename );

  return
end
