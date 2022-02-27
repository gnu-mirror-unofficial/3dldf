%% alhambra_207
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

input TEX.mp;

%% \font\huge=cmr17 scaled 8000

verbatimtex \font\Largebx=cmbx17 scaled 1250 etex;
prologues := 3;
outputtemplate := "%j_%3c.eps";

pen medium_pen;
medium_pen := pencircle scaled .25mm;

pen dot_pen;
dot_pen = pencircle scaled 3pt;

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

cmykcolor teal_blue;
teal_blue = (1, .5, .5, 0);

cmykcolor dark_blue;
dark_blue = (1, 1, 0.5, 0);

cmykcolor mauve;
mauve = (.5, 1, .5, 0);

path p[];

transform t[];

pair d[];

%% * (1)

beginfig(0);

%% ** (2)

  pickup medium_pen;
  path hex[];

  undraw frame;
  
  %draw fullcircle scaled 4cm;
  
  for i = 0 upto 5:
    z[i] = (2cm, 0) rotated (i*60);
  endfor;

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

  % drawarrow p0 withcolor blue;
  % drawarrow p1 withcolor green;

  for i = 1 upto 5:
    draw p0 rotated 60i;
    draw p1 rotated 60i;
  endfor;

  p20 = p1 rotated 60;

  %drawarrow p20 withcolor (1, 0, 0, 0);

  p21 = p1 & reverse p0 .. reverse p20 & cycle;

  draw p21 withcolor magenta;

  for i = 1 upto 5:
    p[21+i]  = p21 rotated 60i;
    z[39+i]  = z7  rotated 60i;
  endfor;
  
  %fill p21 withcolor blue;

  
  p2 = origin -- z7;


  z9 = .5[origin, z1];
  
  p3 = z2 -- z9;

  z10 = p2 intersectionpoint p3;


  z11 = z9 reflectedabout (z7, z10);


  p4 = (fullcircle scaled (2*(y7 - y10)) scaled 1) shifted z10;

  p5 = z7 -- z9 -- z11 -- cycle;

  z12 = z7 rotatedaround (z10, 180);

  z13 = z11 rotatedaround (z10, 180);

  z14 = z9 rotatedaround (z10, 180);

  p6 = ((((z7 -- z14 -- z11 -- z12 -- z9 -- z13 -- cycle) shifted -z10) scaled .9)
      rotated 30) shifted z10;
 

  %unfill p6;


  draw p6 withcolor red;

  
  z21 = z10 rotated 60;


  p7 = fullcircle scaled (2*(y7 - y10)) shifted z21;

  p8 = (p6 rotated 60) rotatedaround (z21, 0);
  
  %draw p8 withcolor blue;

  for i = 0 upto 5:
    z[15+i] = point i of p8;
  endfor;

  p9 = z20 -- z16 -- z18 -- cycle;
  %draw p9 withcolor blue;

  p10 = z15 -- z17 -- z19 -- cycle;
  %draw p10 withcolor green;

  z22 = (z20 -- z16) intersectionpoint (z15 -- z19);

  z23 = (z20 -- z16) intersectionpoint (z15 -- z17);


  z24 = (z18 -- z16) intersectionpoint (z15 -- z17);


  z25 = (z18 -- z16) intersectionpoint (z19 -- z17);


  z26 = (z18 -- z20) intersectionpoint (z19 -- z17);


  z27 = (z18 -- z20) intersectionpoint (z19 -- z15);

  
  p11 = (((z15 -- z22 -- z20 -- z27 -- z19 -- z26 -- z18 -- z25 -- z17 -- z24 -- z16 -- z23 -- cycle) shifted -z21)
           scaled 1) shifted z21;

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

  d2 = z2;
  d4 = z4;
  d10 = z10;

  v0 = currentpicture;
  currentpicture := nullpicture;
  
  
%% ** (2) Auxiliary lines

  if do_gray:
    %draw p2 withcolor gray;
    %draw p3 withcolor gray;
    draw p4 withcolor gray;
    draw p5 withcolor gray;
    draw p7 withcolor gray;
    draw z0 -- z1 -- z2 -- z3 -- z4 -- z5 -- cycle withcolor gray;
    for i = 0 upto 5:
      draw origin -- z[i] withcolor gray;
    endfor;
  fi;

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

    dotlabel.bot(btex $z_{21}$ etex, z21);
    % dotlabel.lft(btex $z_{15}$ etex, z15);
    % dotlabel.bot(btex $z_{16}$ etex, z16);
    % dotlabel.rt(btex $z_{17}$ etex, z17);
    % dotlabel.rt(btex $z_{18}$ etex, z18);
    % dotlabel.top(btex $z_{19}$ etex, z19);
    % dotlabel.ulft(btex $z_{20}$ etex, z20);
    % dotlabel.lft(btex $z_{22}$ etex, z22);
    % dotlabel.llft(btex $z_{23}$ etex, z23);
    % dotlabel.bot(btex $z_{24}$ etex, z24);
    % dotlabel.rt(btex $z_{25}$ etex, z25);
    % dotlabel.urt(btex $z_{26}$ etex, z26);
    % dotlabel.top(btex $z_{27}$ etex, z27);
    %dotlabel.bot(btex $z_{28}$ etex, z28);
    dotlabel.bot(btex $z_{29}$ etex, z29);
    dotlabel.bot(btex $z_{30}$ etex, z30);
    dotlabel.bot(btex $z_{31}$ etex, z31);
    dotlabel.bot(btex $z_{32}$ etex, z32);
    dotlabel.llft(btex $z_{40}$ etex, z40);
    dotlabel.llft(btex $z_{41}$ etex, z41);
    dotlabel.rt(btex $z_{42}$ etex, z42 shifted (4pt, 2pt));
    dotlabel.urt(btex $z_{43}$ etex, z43);
    dotlabel.urt(btex $z_{44}$ etex, z44);
    
    label.top(btex $p_6$ etex, z10) withcolor red;
    label.top(btex $p_{11}$ etex, z28) withcolor orange;
    label.top(btex $p_{12}$ etex, z29);
    label.top(btex $p_{13}$ etex, z30);
    label.top(btex $p_{14}$ etex, z31);
    label.top(btex $p_{15}$ etex, z32);
    label.top(btex $p_{21}$ etex, z7) withcolor magenta;
    label.ulft(btex $p_{22}$ etex, z40);
    label.ulft(btex $p_{23}$ etex, z41);
    label.ulft(btex $p_{24}$ etex, z42 shifted (-.25cm, .125cm));
    label.lrt(btex  $p_{25}$ etex, z43 shifted (-4pt, -2pt));
    label.lrt(btex  $p_{26}$ etex, z44);

  fi;

  v100 = currentpicture;
  currentpicture := nullpicture;

%% *** (3)
  
%% ** (2) Hexagon 2
  
  t2 = identity shifted (d4 - d2);

  j := 0;

  for i = 21 upto 26:
    draw p[i];
    p[30+j] = p[i] transformed t2;
    draw p[30+j];
    d[30+j] = ((d10 shifted (0, .6cm))rotated 60j) transformed t2;
    d[40+j] = ((d10 shifted (0, 0cm))rotated 60j) transformed t2;
    if odd j:
      p[40+j] = (p11 rotated 60(j-1)) transformed t2;
    else:
      p[40+j] = (p6 rotated 60j) transformed t2;
    fi;
    draw p[40+j];
    j := incr j;
  endfor;

  d50 = origin transformed t2;

  v2 = currentpicture;
  currentpicture := nullpicture;
  
%% ** (2) Labels

  drawdot d50 withpen dot_pen;
  label.top(btex $d_{50}$ etex, d50 shifted (2.5pt, 1pt));


  if do_labels:

    label(btex $p_{30}$ etex, (z21 transformed t2) shifted (-.625cm, -.25cm));
    
    % j := 0;
    % for i = 21 upto 26:
    %   label(TEX("$d_{" & decimal (30+j) & "}$"), d[30+j]);
    %   label(TEX("$d_{" & decimal (40+j) & "}$"), d[40+j]);
    %   j := incr j;
    % endfor;

    for i = 40 upto 45:
      dotlabel.top(TEX("$d_{" & decimal i & "}$"), d[i]);
      %label(TEX("$p_{" & decimal(30+i) & "}$"), d[30+i]);
      label.bot(TEX("$p_{" & decimal i & "}$"), d[i]);
    endfor;
    
    for i = 0 upto 5:

    endfor;

  fi;
 
  v102 = currentpicture;
  currentpicture := nullpicture;
  
%% *** (3)

%% ** (2) Hexagon 3

  t3 = identity shifted (z5 - z3);
  

  d60 = z10 transformed t3;
  p60 = p21 transformed t3;
  p66 = p6 transformed t3;


  
  d61 = z21 transformed t3;
  p61 = p22 transformed t3;
  p67 = p11 transformed t3;

  d62 = z29 transformed t3;
  p62 = p23 transformed t3;
  p68 = p12 transformed t3;

  d63 = z30 transformed t3;
  p63 = p24 transformed t3;
  p69 = p13 transformed t3;

  d64 = z31 transformed t3;
  p64 = p25 transformed t3;
  p70 = p14 transformed t3;
  
  d65 = z32 transformed t3;
  p65 = p26 transformed t3;
  p71 = p15 transformed t3;

 
  for i = 60 upto 71:
    draw p[i];
  endfor;
    
  v3 = currentpicture;
  currentpicture := nullpicture;
  
%% *** (3) Labels for hexagon 3

  for i = 60 upto 65:
    dotlabel.top(TEX("$d_{" & decimal i & "}$"), d[i]);
    label.bot(TEX("$p_{" & decimal (i + 6) & "}$"), d[i]);
  endfor;
  
  v103 = currentpicture;
  currentpicture := nullpicture;

%% ** (2) Hexagon 4

%% REDO
  
%% *** (3)
  
  % t4 = identity shifted (z0 - z4);

  % p80 = p21 transformed t4;
  % p81 = p6  transformed t4;
  % d80 = z10 transformed t4;

  % draw p80;
  % draw p81;

  % p82 = p22 transformed t4;
  % p83 = p11 transformed t4;
  % d82 = z21 transformed t4;

  % draw p82;
  % draw p83;

  % p84 = p23 transformed t4;
  % p85 = p12 transformed t4;
  % d84 = z29 transformed t4;

  % draw p84;
  % draw p85;

  % p86 = p24 transformed t4;
  % p87 = p13 transformed t4;
  % d86 = z30 transformed t4;

  % draw p86;
  % draw p87;

  % p88 = p25 transformed t4;
  % p89 = p14 transformed t4;
  % d88 = z31 transformed t4;

  % draw p88;
  % draw p89;

  % p90 = p26 transformed t4;
  % p91 = p15 transformed t4;
  % d90 = z32 transformed t4;

  % draw p90;
  % draw p91;

  
  
%% *** (3)


  
%% *** (3)
  
  v4 = currentpicture;
  currentpicture := nullpicture;

%% *** (3) Labels for hexagon 4

  % if do_labels:
  %   dotlabel.top(btex $d_{80}$ etex, d80);
  %   dotlabel.top(btex $d_{82}$ etex, d82);
  %   dotlabel.top(btex $d_{84}$ etex, d84);
  %   dotlabel.top(btex $d_{86}$ etex, d86);
  %   dotlabel.top(btex $d_{88}$ etex, d88);
  %   dotlabel.top(btex $d_{90}$ etex, d90);
  % fi;

  v104 = currentpicture;
  currentpicture := nullpicture;
  
  
%% ** (2) Hexagon 5

  d95 = point 4 of p63;


  
  t5 = identity shifted (d95 - z2);

  d100 = z10 transformed t5;
  p100 = p21 transformed t5;
  p101 = p6 transformed t5;

  draw p100;
  draw p101;

  d102 = z21 transformed t5;
  p102 = p22 transformed t5;
  p103 = p11 transformed t5;

  draw p102;
  draw p103;


  
  v5 = currentpicture;
  currentpicture := nullpicture;
  
%% *** (3) Labels for hexagon 5

  if do_labels:
    label.top(btex $d_{95}$ etex, d95 shifted (2pt, 0pt));
    dotlabel.bot(btex $d_{100}$ etex, d100);
    dotlabel.bot(btex $d_{102}$ etex, d102);
  fi;

  v105 = currentpicture;
  currentpicture := nullpicture;
  
%% *** (3)  


%% ** (2) Combine path pictures

  currentpicture := v0;

  addto currentpicture also v2;
  addto currentpicture also v3;
  addto currentpicture also v4;
  addto currentpicture also v5;

%% *** (3) Combine pictures with auxiliary lines and labels

  addto currentpicture also v100;

  addto currentpicture also v102;
  addto currentpicture also v103;
  addto currentpicture also v104;
  addto currentpicture also v105;

  label(btex {\Largebx 1} etex, origin);
  label(btex {\Largebx 2} etex, origin transformed t2);
  label(btex {\Largebx 3} etex, origin transformed t3);

  %% REDO!


  %label(btex {\Largebx 4} etex, origin transformed t4);

  
%% ** (2) End of Fig. 0
    
endfig;

%% * (1) Fig. 1

beginfig(1); 

%% ** (2)

  currentpicture := v0;
  addto currentpicture also v2;
  addto currentpicture also v3;
  addto currentpicture also v4;
  addto currentpicture also v5;
  
  pickup medium_pen;
  
  filldraw p21 withcolor dark_blue;
  unfilldraw p6;

  filldraw p11 withcolor dark_blue;

  filldraw p23 withcolor dark_blue;
  unfilldraw p12;

  filldraw p25 withcolor dark_blue;
  unfilldraw p14;

  filldraw p13 withcolor orange;

  filldraw p15 withcolor dark_blue;

  filldraw p30 withcolor dark_blue;
  unfilldraw p40;

  filldraw p32 withcolor dark_blue;
  unfilldraw p42;

  filldraw p34 withcolor dark_blue;
  unfilldraw p44;
  
  filldraw p41 withcolor orange;
  filldraw p43 withcolor mauve;
  filldraw p45 withcolor orange;

%% ** (2) Hexagon 3

  filldraw p60 withcolor teal_blue;
  unfilldraw p66;

  filldraw p62 withcolor dark_blue;
  unfilldraw p68;

  filldraw p64 withcolor dark_blue;
  unfilldraw p70;

  filldraw p67 withcolor dark_blue;
  filldraw p69 withcolor dark_blue;
  filldraw p71 withcolor dark_blue;


% %% *** (3) Hexagon 4

%% REDO!
  
%   filldraw p80 withcolor dark_blue;
%   unfilldraw p81;

%   filldraw p83 withcolor dark_blue;

%   filldraw p84 withcolor dark_blue;
%   unfilldraw p85;

%   filldraw p87 withcolor orange;

%   filldraw p88 withcolor dark_blue;
%   unfilldraw p89;

%   filldraw p91 withcolor dark_blue;
  
  % draw p6;
  % draw p11;
  % draw p12;
  % draw p13;
  % draw p14;
  % draw p15;


%% ** (2) Hexagon 5

  filldraw p100 withcolor dark_blue;
  unfilldraw p101;

  fill p103 withcolor orange;

%% *** (3)
  
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
