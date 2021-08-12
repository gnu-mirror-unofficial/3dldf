%%%% test_transparent.mp
%%%% Created by Laurence D. Finston (LDF) Thu 12 Aug 2021 03:48:37 PM CEST

%% This also tests using the "double number system.
%%
%% run like this:
%% mpost -numbersystem "double" test_transparent.mp
%%
%% LDF 2021.08.12.

outputformat := "png";

outputformatoptions := "format=rgba";

beginfig(1);

  % message "numbersystem";
  % show numbersystem;
  
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
