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


%% * (1) Top

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

numeric gray;
gray = .5;

boolean do_gray;

do_gray = true; % false

boolean do_labels;

do_labels = true; % false

picture v[];

cmykcolor magenta;
magenta = (0, 1, 0, 0);

cmykcolor orange;
orange = (0, .5, 1, 0);

path p[];


%% * (1)

beginfig(0);

%% ** (2)

  pickup medium_pen;
  path hex[];

  draw frame;
  
  %draw fullcircle scaled 4cm;
  
  for i = 0 upto 5:
    z[i] = (2cm, 0) rotated (i*60);
    if do_gray:
      draw origin -- z[i] withcolor gray;
    fi;
  endfor;



  if do_gray:
    draw z0 -- z1 -- z2 -- z3 -- z4 -- z5 -- cycle withcolor gray;
  fi;

  j = 0;
  m = 1;
  k = .125cm;
  for i = .25 step .25 until .75:
    z[6+j] = i[z2, z1] shifted (0, k*m);
    j := incr j;
    m := decr m;
  endfor;

  p0 = z2 .. {dir 0}z6{dir 0} .. z7 .. {dir 0}z8{dir 0} .. z1;
  p1 = p0 rotatedaround (z1, 60);

  drawarrow p0 withcolor blue;
  drawarrow p1 withcolor green;

  for i = 1 upto 5:
    draw p0 rotated 60i;
    draw p1 rotated 60i;
  endfor;

  p20 = p1 rotated 60;

  drawarrow p20 withcolor (1, 0, 0, 0);

  p21 = p1 & reverse p0 .. reverse p20 & cycle;

  
  draw p21 withcolor magenta;


  
  for i = 1 upto 5:
    p[21+i]  = p21 rotated 60i;
    z[39+i]  = z7  rotated 60i;
  endfor;

  
  %fill p21 withcolor blue;

  
  p2 = origin -- z7;

  if do_gray:
    draw p2 withcolor gray;
  fi;

  z9 = .5[origin, z1];
  
  p3 = z2 -- z9;

  if do_gray:
    %draw p3 withcolor gray;
  fi;
  
  z10 = p2 intersectionpoint p3;


  z11 = z9 reflectedabout (z7, z10);


  p4 = (fullcircle scaled (2*(y7 - y10)) scaled 1) shifted z10;

  if do_gray:
    draw p4 withcolor gray;
  fi;
  
  p5 = z7 -- z9 -- z11 -- cycle;

  if do_gray:
    draw p5 withcolor gray;
  fi;

  z12 = z7 rotatedaround (z10, 180);


  z13 = z11 rotatedaround (z10, 180);


  z14 = z9 rotatedaround (z10, 180);


  p6 = ((z7 -- z14 -- z11 -- z12 -- z9 -- z13 -- cycle) scaled 1) rotatedaround (z10, 30);

  %unfill p6;
  draw p6 withcolor red;


  
  z21 = z10 rotated 60;


  p7 = fullcircle scaled (2*(y7 - y10)) shifted z21;

  if do_gray:
    draw p7 withcolor gray;
  fi;

  p8 = (p6 rotated 60) rotatedaround (z21, 0);

  %draw p8 withcolor blue;

  for i = 0 upto 5:
    z[15+i] = point i of p8;
  endfor;
  
  p9 = z20 -- z16 -- z18 -- cycle;
  draw p9 withcolor blue;

  p10 = z15 -- z17 -- z19 -- cycle;
  draw p10 withcolor green;

  z22 = (z20 -- z16) intersectionpoint (z15 -- z19);

  z23 = (z20 -- z16) intersectionpoint (z15 -- z17);


  z24 = (z18 -- z16) intersectionpoint (z15 -- z17);


  z25 = (z18 -- z16) intersectionpoint (z19 -- z17);


  z26 = (z18 -- z20) intersectionpoint (z19 -- z17);

 
  z27 = (z18 -- z20) intersectionpoint (z19 -- z15);
  
  

  
  p11 = z15 -- z22 -- z20 -- z27 -- z19 -- z26 -- z18 -- z25 -- z17 -- z24 -- z16 -- z23 -- cycle;

  draw p11 withcolor orange;

  z28 = z10 rotated 60;

  
  j := 1;
  for i = 0 step 2 until 4:
    p[12+i]   = p6  rotated 120j;
    p[12+i+1] = p11 rotated 120j;
    z[29+i]   = z10 rotated 120j;
    z[29+i+1] = z28 rotated 120j;
    j := incr j;  
  endfor;

  draw p12 withcolor red;

  draw p13 withcolor orange;

  draw p14 withcolor red;

  draw p15 withcolor orange;

%% ** (2) Labels
  
  if do_labels:
    %dotlabel.bot("origin", origin);
    
    dotlabel.rt(btex $z_0$ etex, z0);
    dotlabel.urt(btex $z_1$ etex, z1);
    dotlabel.ulft(btex $z_2$ etex, z2);
    dotlabel.lft(btex $z_3$ etex, z3);
    dotlabel.llft(btex $z_4$ etex, z4);
    dotlabel.lrt(btex $z_5$ etex, z5);

    dotlabel.top(btex $z_6$ etex, z6);
    dotlabel.bot(btex $z_7$ etex, z7);
    dotlabel.bot(btex $z_8$ etex, z8);
    dotlabel.lrt(btex $z_9$ etex, z9);
    dotlabel.bot(btex $z_{10}$ etex, z10);
    %dotlabel.lft(btex $z_{11}$ etex, z11);
    %dotlabel.bot(btex $z_{12}$ etex, z12);
    dotlabel.urt(btex $z_{13}$ etex, z13);
    dotlabel.ulft(btex $z_{14}$ etex, z14);

    %dotlabel.bot(btex $z_{21}$ etex, z21);
    % dotlabel.lft(btex $z_{15}$ etex, z15);
    % dotlabel.bot(btex $z_{16}$ etex, z16);
    % dotlabel.rt(btex $z_{17}$ etex, z17);
    % dotlabel.rt(btex $z_{18}$ etex, z18);
    % dotlabel.top(btex $z_{19}$ etex, z19);
    % dotlabel.ulft(btex $z_{20}$ etex, z20);
    %dotlabel.lft(btex $z_{22}$ etex, z22);
    %dotlabel.llft(btex $z_{23}$ etex, z23);
    %dotlabel.bot(btex $z_{24}$ etex, z24);
    %dotlabel.rt(btex $z_{25}$ etex, z25);
    %dotlabel.urt(btex $z_{26}$ etex, z26);
    %dotlabel.top(btex $z_{27}$ etex, z27);
    dotlabel.bot(btex $z_{28}$ etex, z28);
    dotlabel.bot(btex $z_{29}$ etex, z29);
    dotlabel.bot(btex $z_{30}$ etex, z30);
    dotlabel.bot(btex $z_{31}$ etex, z31);
    dotlabel.bot(btex $z_{32}$ etex, z32);
    dotlabel.llft(btex $z_{40}$ etex, z40);
    dotlabel.llft(btex $z_{41}$ etex, z41);
    dotlabel.lrt(btex $z_{42}$ etex, z42);
    dotlabel.urt(btex $z_{43}$ etex, z43);
    dotlabel.urt(btex $z_{44}$ etex, z44);
    
    label.top(btex $p_6$ etex, z10);
    label.top(btex $p_{11}$ etex, z28);
    label.top(btex $p_{12}$ etex, z29);
    label.top(btex $p_{13}$ etex, z30);
    label.top(btex $p_{14}$ etex, z31);
    label.top(btex $p_{15}$ etex, z32);
    label.top(btex $p_{21}$ etex, z7);
    label.ulft(btex $p_{22}$ etex, z40);
    label.ulft(btex $p_{23}$ etex, z41);
    label.llft(btex $p_{24}$ etex, z42);
    label.lrt(btex  $p_{25}$ etex, z43);
    label.lrt(btex  $p_{26}$ etex, z44);

  fi;
    
%% ** (2) End of Fig. 0

endfig;

%% * (1) Fig. 1

beginfig(1); 

%% ** (2)

  pickup medium_pen;

  draw frame;
  
  for i = 21 upto 26:
    draw p[i];
  endfor;

  draw p6;
  draw p11;
  draw p12;
  draw p13;
  draw p14;
  draw p15;
  
%% ** (2) End of Fig. 1

endfig;

%% * (1)

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
