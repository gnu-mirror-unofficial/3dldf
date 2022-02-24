%% alhambra_207.mp
%% Created by Laurence D. Finston (LDF) Thu 24 Feb 2022 01:28:50 PM CET

%% * (1) Copyright and License.

%%%% This file is part of GNU 3DLDF, a package for three-dimensional drawing.  
%%%% Copyright (C) 2022 The Free Software Foundation, Inc.  

%%%% GNU 3DLDF is free software; you can redistribute it and/or modify 
%%%% it under the terms of the GNU General Public License as published by 
%%%% the Free Software Foundation; either version 3 of the License, or 
%%%% (at your option) any later version.  

%%%% GNU 3DLDF is distributed in the hope that it will be useful, 
%%%% but WITHOUT ANY WARRANTY; without even the implied warranty of 
%%%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
%%%% GNU General Public License for more details.  

%%%% You should have received a copy of the GNU General Public License 
%%%% along with GNU 3DLDF; if not, write to the Free Software 
%%%% Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA 

%%%% GNU 3DLDF is a GNU package.  
%%%% It is part of the GNU Project of the  
%%%% Free Software Foundation 
%%%% and is published under the GNU General Public License. 
%%%% See the website http://www.gnu.org 
%%%% for more information.   
%%%% GNU 3DLDF is available for downloading from 
%%%% http://www.gnu.org/software/3dldf/LDF.html.

%%%% Please send bug reports to Laurence.Finston@gmx.de
%%%% The mailing list help-3dldf@gnu.org is available for people to 
%%%% ask other users for help.  
%%%% The mailing list info-3dldf@gnu.org is for sending 
%%%% announcements to users. To subscribe to these mailing lists, send an 
%%%% email with ``subscribe <email-address>'' as the subject.  

%%%% The author can be contacted at: 

%%%% Laurence D. Finston 
%%%% c/o Free Software Foundation, Inc. 
%%%% 51 Franklin St, Fifth Floor 
%%%% Boston, MA  02110-1301  
%%%% USA

%%%% Laurence.Finston@gmx.de


%% ** (2) 

verbatimtex \font\huge=cmr17 scaled 8000 etex;
prologues := 3;
outputtemplate := "%j_%3c.eps";

pen medium_pen;
medium_pen := pencircle scaled .25mm;

path frame;

numeric frame_wd;
numeric frame_ht;

frame_wd = 8cm;
frame_ht = 6cm;

frame =    (-.5frame_wd, -.5frame_ht) -- (.5frame_wd, -.5frame_ht) -- (.5frame_wd, .5frame_ht)
        -- (-.5frame_wd, .5frame_ht) -- cycle;
 


beginfig(0);
  pickup medium_pen;
  path hex[];

  draw frame;
  
  %draw fullcircle scaled 4cm;
  
  for i = 0 upto 5:
    z[i] = (2cm, 0) rotated (i*60);
    draw origin -- z[i] withcolor .5;
  endfor;


  %dotlabel.bot("origin", origin);

  dotlabel.rt(btex $z_0$ etex, z0);
  dotlabel.urt(btex $z_1$ etex, z1);
  dotlabel.ulft(btex $z_2$ etex, z2);
  dotlabel.lft(btex $z_3$ etex, z3);
  dotlabel.llft(btex $z_4$ etex, z4);
  dotlabel.lrt(btex $z_5$ etex, z5);

  draw z0 -- z1 -- z2 -- z3 -- z4 -- z5 -- cycle withcolor .5;

  j = 0;
  m = 1;
  k = .125cm;
  for i = .25 step .25 until .75:
    z[6+j] = i[z2, z1] shifted (0, k*m);
    j := incr j;
    m := decr m;
  endfor;

  dotlabel.top(btex $z_6$ etex, z6);
  dotlabel.bot(btex $z_7$ etex, z7);
  dotlabel.bot(btex $z_8$ etex, z8);

  path p[];

  p0 = z2 .. {dir 0}z6{dir 0} .. z7 .. {dir 0}z8{dir 0} .. z1;
  p1 = p0 rotatedaround (z1, 60);
  
  for i = 0 upto 5:
    draw p0 rotated 60i;
    draw p1 rotated 60i;
  endfor;

  p2 = origin -- z7;
  draw p2 withcolor .5;

  p3 = z2 -- .5[origin, z1];

  draw p3 withcolor .5;
  
  z9 = p2 intersectionpoint p3;
  dotlabel.bot(btex $z_9$ etex, z9);

  
  
endfig;

end;


%% ** (2) 

%% * (1) Emacs-Lisp code for use in indirect buffers when using the          
%%       GNU Emacs editor.  The local variable list is not evaluated when an 
%%       indirect buffer is visited, so it's necessary to evaluate the       
%%       following s-expression in order to use the facilities normally      
%%       accessed via the local variables list.                              
%%       LDF 2004.02.12.

%% (progn (metafont-mode) (outline-minor-mode t) (setq fill-column 80) (ignore '(  
%% )) (setq outline-regexp "%% [*\f]+"))

%% * (1) Local variables for Emacs.

%% Local Variables:
%% mode:Metapost
%% eval:(outline-minor-mode t)
%% eval:(read-abbrev-file abbrev-file-name)
%% outline-regexp:"%% [*\f]+"
%% End:
