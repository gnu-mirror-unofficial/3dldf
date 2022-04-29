%% superellipse.mp

prologues := 3;
outputtemplate := "%j%3c.eps";

pen medium_pen;
medium_pen = pencircle scaled .5mm;
pickup medium_pen;

pen big_pen;
big_pen = pencircle scaled 1mm;

path frame;
numeric frame_wd;
numeric frame_ht;

frame_wd = 14cm;
frame_ht = 14cm;

frame =    (-.5frame_wd, -.5frame_ht) -- (.5frame_wd, -.5frame_ht) -- (.5frame_wd, .5frame_ht)
        -- (-.5frame_wd, .5frame_ht) -- cycle;

path q[];


beginfig(0);

  numeric n;
  
  pickup medium_pen;

  draw frame;

  z0 = (2cm, 0);
  z1 = (0, 3cm);
  z2 = (-2cm, 0);
  z3 = (0, -3cm);
  
  q0 = superellipse(z0, z1, z2, z3, .75);
  draw q0;

  q1 = superellipse(z0, z1, z2, z3, .25);
  draw q1 withcolor red;

  q2 = superellipse(z0, z1, z2, z3, 2);
  draw q2 withcolor blue;

endfig;
end;

%% ** (2) End of MetaPost code.

%% * (1) Emacs-Lisp code for use in indirect buffers when using the          
%%   	 GNU Emacs editor.  The local variable list is not evaluated when an 
%%   	 indirect buffer is visited, so it's necessary to evaluate the       
%%   	 following s-expression in order to use the facilities normally      
%%   	 accessed via the local variables list.                              
%%   	 \initials{LDF 2004.02.12}.                                          

%% (progn (metapost-mode) (outline-minor-mode t) (setq fill-column 80))    

%% * (1) Local variables for Emacs.

%% Local Variables:
%% mode:metapost
%% eval:(outline-minor-mode t)
%% eval:(read-abbrev-file abbrev-file-name)
%% outline-regexp:"%% [*\f]+"
%% End:
