%%%% ttemp.mp.
%%%% Generated on Fri Aug  6 22:44:25 2021
%%%% from ttemp.ldf by GNU 3DLDF 3.0.

outputformat := "png";

outputformatoptions := "format=rgba";

beginfig(1);

  message "numbersystem";
  show numbersystem;
  
  pickup pencircle xscaled 2pt yscaled 2pt;
  
  path q;

  q = (-5in, -5in) -- (5in, -5in) -- (5in, 5in) -- (-5in, 5in) -- cycle;
  
  path p[];
  
  p0 = fullcircle xscaled 1in yscaled 1in;

  p1 = fullcircle xscaled 2in yscaled 2in;

  draw q;


  fill p0 withcolor red;
  draw p0;

  draw p1;
  
endfig;

end
