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

verbatimtex \font\large=cmr12 scaled 1250\font\largebx=cmbx12 scaled 1250
            \font\Largebx=cmbx17 scaled 1250 etex;

prologues := 3;
outputtemplate := "%j_%3c.eps";

pen small_pen;
small_pen = pencircle scaled .25mm;

pen medium_pen;
medium_pen = pencircle scaled .5mm;

pen big_pen;
big_pen = pencircle scaled .75mm;

pen dot_pen;
dot_pen = pencircle scaled 3pt;


numeric gray;
gray = .5;

boolean do_gray;

do_gray = true; % false

boolean do_labels;

do_labels = true; % false

picture v[];
picture w[];

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

cmykcolor dark_olive_green;
dark_olive_green = (0, 0, 1, .75);

path p[];
path q[];

transform t[];

pair d[];
pair Z[];

%% * (1)

beginfig(0);

%% ** (2)

  pickup medium_pen;
  path hex[];

  for i = 0 upto 5:
    Z[i] = (2cm, 0) rotated (i*60);
  endfor;

  %draw fullcircle scaled 4cm;

%% ** (2)  Create wavy edges for the triangles.
  
  j = 0;
  m = 1;
  k = .125cm;
  for i = .25 step .25 until .75:
    Z[6+j] = i[Z2, Z1] shifted (0, k*m);
    j := incr j;
    m := decr m;
  endfor;

  p0 = Z2 .. {dir 0}Z6{dir 0} .. Z7 .. {dir 0}Z8{dir 0} .. Z1;
  p1 = p0 rotatedaround (Z1, 60);

%% ** (2)
  
  % drawarrow p0 withcolor blue;
  % drawarrow p1 withcolor green;

  for i = 1 upto 5:
    draw p0 rotated 60i;
    draw p1 rotated 60i;
  endfor;

  p20 = p1 rotated 60;

  %drawarrow p20 withcolor (1, 0, 0, 0);

  p21 = p1 & reverse p0 .. reverse p20 & cycle;

  draw p21; % withcolor magenta;

  for i = 1 upto 5:
    p[21+i]  = p21 rotated 60i;
    Z[39+i]  = Z7  rotated 60i;
  endfor;
  
  %fill p21 withcolor blue;

  p2 = origin -- Z7;
  
  Z9 = .5[origin, Z1];
  
  p3 = Z2 -- Z9;

  Z10 = p2 intersectionpoint p3;


  Z11 = Z9 reflectedabout (Z7, Z10);


  p4 = (fullcircle scaled (2*(ypart Z7 - ypart Z10)) scaled 1) shifted Z10;

  p5 = Z7 -- Z9 -- Z11 -- cycle;

  Z12 = Z7 rotatedaround (Z10, 180);

  Z13 = Z11 rotatedaround (Z10, 180);

  Z14 = Z9 rotatedaround (Z10, 180);

  p6 = ((((Z7 -- Z14 -- Z11 -- Z12 -- Z9 -- Z13 -- cycle) shifted -Z10) scaled .9)
      rotated 30) shifted Z10;
 
  %unfill p6;

  draw p6; % withcolor red;

  Z21 = Z10 rotated 60;

  p7 = fullcircle scaled (2*(ypart Z7 - ypart Z10)) shifted Z21;

  p8 = (p6 rotated 60) rotatedaround (Z21, 0);
  
  %draw p8 withcolor blue;

  for i = 0 upto 5:
    Z[15+i] = point i of p8;
  endfor;

  p9 = Z20 -- Z16 -- Z18 -- cycle;
  %draw p9 withcolor blue;

  p10 = Z15 -- Z17 -- Z19 -- cycle;
  %draw p10 withcolor green;

  Z22 = (Z20 -- Z16) intersectionpoint (Z15 -- Z19);

  Z23 = (Z20 -- Z16) intersectionpoint (Z15 -- Z17);


  Z24 = (Z18 -- Z16) intersectionpoint (Z15 -- Z17);


  Z25 = (Z18 -- Z16) intersectionpoint (Z19 -- Z17);


  Z26 = (Z18 -- Z20) intersectionpoint (Z19 -- Z17);


  Z27 = (Z18 -- Z20) intersectionpoint (Z19 -- Z15);

  
  p11 = (((Z15 -- Z22 -- Z20 -- Z27 -- Z19 -- Z26 -- Z18 -- Z25 -- Z17
	  -- Z24 -- Z16 -- Z23 -- cycle) shifted -Z21)
           scaled 1) shifted Z21;

  draw p11; % withcolor orange;

  Z28 = Z10 rotated 60;


  j := 1;
  for i = 0 step 2 until 4:
    p[12+i]   = p6  rotated 120j;
    p[12+i+1] = p11 rotated 120j;
    Z[29+i]   = Z10 rotated 120j;
    Z[29+i+1] = Z28 rotated 120j;
    j := incr j;  
  endfor;

  draw p12; % withcolor red;

  draw p13; % withcolor orange;

  draw p14; % withcolor red;

  draw p15; %  withcolor orange;

  d2 = Z2;
  d4 = Z4;
  d10 = Z10;

  v1 = currentpicture;
  currentpicture := nullpicture;
    
%% ** (2) Auxiliary lines

  if do_gray:
    %draw p2 withcolor gray;
    %draw p3 withcolor gray;
    draw p4 withcolor gray;
    draw p5 withcolor gray;
    draw p7 withcolor gray;
    draw Z0 -- Z1 -- Z2 -- Z3 -- Z4 -- Z5 -- cycle withcolor gray;
    for i = 0 upto 5:
      draw origin -- Z[i] withcolor gray;
    endfor;
  fi;

%% ** (2) Labels
  
  if do_labels:
    %dotlabel.bot("origin", origin);
    
    dotlabel.rt(btex $Z_0$ etex, Z0);
    dotlabel.urt(btex $Z_1$ etex, Z1);
    dotlabel.ulft(btex $Z_2$ etex, Z2);
    dotlabel.lft(btex $Z_3$ etex, Z3);
    dotlabel.llft(btex $Z_4$ etex, Z4);
    dotlabel.lrt(btex $Z_5$ etex, Z5);

    dotlabel.top(btex $Z_6$ etex, Z6);
    dotlabel.bot(btex $Z_7$ etex, Z7);
    dotlabel.bot(btex $Z_8$ etex, Z8);
    dotlabel.lrt(btex $Z_9$ etex, Z9);
    dotlabel.bot(btex $Z_{10}$ etex, Z10);
    %dotlabel.lft(btex $Z_{11}$ etex, Z11);
    %dotlabel.bot(btex $Z_{12}$ etex, Z12);

    dotlabel.urt(btex $Z_{13}$ etex, Z13);
    dotlabel.ulft(btex $Z_{14}$ etex, Z14);

    dotlabel.bot(btex $Z_{21}$ etex, Z21);
    % dotlabel.lft(btex $Z_{15}$ etex, Z15);
    % dotlabel.bot(btex $Z_{16}$ etex, Z16);
    % dotlabel.rt(btex $Z_{17}$ etex, Z17);
    % dotlabel.rt(btex $Z_{18}$ etex, Z18);
    % dotlabel.top(btex $Z_{19}$ etex, Z19);
    % dotlabel.ulft(btex $Z_{20}$ etex, Z20);
    % dotlabel.lft(btex $Z_{22}$ etex, Z22);
    % dotlabel.llft(btex $Z_{23}$ etex, Z23);
    % dotlabel.bot(btex $Z_{24}$ etex, Z24);
    % dotlabel.rt(btex $Z_{25}$ etex, Z25);
    % dotlabel.urt(btex $Z_{26}$ etex, Z26);
    % dotlabel.top(btex $Z_{27}$ etex, Z27);
    %dotlabel.bot(btex $Z_{28}$ etex, Z28);
    dotlabel.bot(btex $Z_{29}$ etex, Z29);
    dotlabel.bot(btex $Z_{30}$ etex, Z30);
    dotlabel.bot(btex $Z_{31}$ etex, Z31);
    dotlabel.bot(btex $Z_{32}$ etex, Z32);
    label.llft(btex $Z_{40}$ etex, Z40 shifted (-.5cm, 0)) withcolor red;
    drawdot Z40 withpen dot_pen scaled 1.5 withcolor red;
    dotlabel.llft(btex $Z_{41}$ etex, Z41);
    label.rt(btex $Z_{42}$ etex, Z42 shifted (4pt, 2pt));
    drawdot Z42 withpen dot_pen;
    dotlabel.urt(btex $Z_{43}$ etex, Z43);
    dotlabel.urt(btex $Z_{44}$ etex, Z44);
    
    label.top(btex $p_6$ etex, Z10) withcolor red;
    label.top(btex $p_{11}$ etex, Z28) withcolor orange;
    label.top(btex $p_{12}$ etex, Z29);
    label.top(btex $p_{13}$ etex, Z30);
    label.top(btex $p_{14}$ etex, Z31);
    label.top(btex $p_{15}$ etex, Z32);
    label.top(btex $p_{21}$ etex, Z7) withcolor magenta;
    label.ulft(btex $p_{22}$ etex, Z40);
    label.ulft(btex $p_{23}$ etex, Z41);
    label.ulft(btex $p_{24}$ etex, Z42 shifted (-.25cm, .125cm));
    label.lrt(btex  $p_{25}$ etex, Z43 shifted (-4pt, -2pt));
    label.lrt(btex  $p_{26}$ etex, Z44);

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

    label(btex $p_{30}$ etex, (Z21 transformed t2) shifted (-.625cm, -.25cm));
    
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

  t3 = identity shifted (Z5 - Z3);

  d60 = Z10 transformed t3;
  p60 = p21 transformed t3;
  p66 = p6 transformed t3;


  
  d61 = Z21 transformed t3;
  p61 = p22 transformed t3;
  p67 = p11 transformed t3;

  d62 = Z29 transformed t3;
  p62 = p23 transformed t3;
  p68 = p12 transformed t3;

  d63 = Z30 transformed t3;
  p63 = p24 transformed t3;
  p69 = p13 transformed t3;

  d64 = Z31 transformed t3;
  p64 = p25 transformed t3;
  p70 = p14 transformed t3;
  
  d65 = Z32 transformed t3;
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
  
%% *** (3)

  d96 = point 4 of p60;

  t4 = identity shifted (d96 - Z3);

  p80 = p21 transformed t4;
  p81 = p6  transformed t4;
  d80 = Z10 transformed t4;

  draw p80;
  draw p81;

  p82 = p22 transformed t4;
  p83 = p11 transformed t4;
  d82 = Z21 transformed t4;

  draw p82;
  draw p83;

  p84 = p23 transformed t4;
  p85 = p12 transformed t4;
  d84 = Z29 transformed t4;

  draw p84;
  draw p85;

  p86 = p24 transformed t4;
  p87 = p13 transformed t4;
  d86 = Z30 transformed t4;

  draw p86;
  draw p87;

  p88 = p25 transformed t4;
  p89 = p14 transformed t4;
  d88 = Z31 transformed t4;

  draw p88;
  draw p89;

  p90 = p26 transformed t4;
  p91 = p15 transformed t4;
  d90 = Z32 transformed t4;

  draw p90;
  draw p91;

%% *** (3)

  v4 = currentpicture;
  currentpicture := nullpicture;

%% *** (3) Labels for hexagon 4

  if do_labels:
    dotlabel.bot(btex $d_{96}$ etex, d96);
    dotlabel.top(btex $d_{80}$ etex, d80);
    dotlabel.top(btex $d_{82}$ etex, d82);
    dotlabel.top(btex $d_{84}$ etex, d84);
    dotlabel.top(btex $d_{86}$ etex, d86);
    dotlabel.top(btex $d_{88}$ etex, d88);
    dotlabel.top(btex $d_{90}$ etex, d90);
  fi;

  v104 = currentpicture;
  currentpicture := nullpicture;
  
  
%% ** (2) Hexagon 5

  d95 = point 4 of p63;
  t5 = identity shifted (d95 - Z2);
  
  d100 = Z10 transformed t5;
  p100 = p21 transformed t5;
  p101 = p6 transformed t5;

  draw p100;
  draw p101;

  d102 = Z21 transformed t5;
  p102 = p22 transformed t5;
  p103 = p11 transformed t5;

  draw p102;
  draw p103;

  d104 = Z29 transformed t5;
  p104 = p23 transformed t5;
  p105 = p12 transformed t5;

  draw p104;
  draw p105;

  
  v5 = currentpicture;
  currentpicture := nullpicture;
  
%% *** (3) Labels for hexagon 5

  if do_labels:
    label.top(btex $d_{95}$ etex, d95 shifted (2pt, 0pt));
    dotlabel.bot(btex $d_{100}$ etex, d100);
    dotlabel.bot(btex $d_{102}$ etex, d102);
    dotlabel.bot(btex $d_{104}$ etex, d104);
  fi;

  v105 = currentpicture;
  currentpicture := nullpicture;
  
%% *** (3)  


%% ** (2) Combine path pictures

  currentpicture := v1;

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
  label(btex {\Largebx 4} etex, origin transformed t4);
  label(btex {\Largebx 5} etex, origin transformed t5);
  
%% ** (2) Heavy border lines

  pickup big_pen;

  t1 = identity;

  i = 1;
  forever:
    exitunless known t[i];
    for j = 0 upto 5:
      draw (p0 transformed t[i]) rotatedaround (origin transformed t[i], 60j);
    endfor;
    i := incr i;
  endfor;


%% ** (2) End of Fig. 0
    
endfig;

%% * (1) Fig. 1

beginfig(1); 

%% ** (2)

  pickup medium_pen;
  
  currentpicture := v1;
  addto currentpicture also v2;
  addto currentpicture also v3;
  addto currentpicture also v4;
  addto currentpicture also v5;
  
  
  filldraw p21 withcolor dark_blue;
  unfilldraw p6;

  filldraw p11 withcolor dark_olive_green;

  filldraw p23 withcolor dark_blue;
  unfilldraw p12;

  filldraw p25 withcolor dark_blue;
  unfilldraw p14;

  filldraw p13 withcolor orange;

  filldraw p15 withcolor dark_olive_green;

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

  filldraw p67 withcolor dark_olive_green;
  filldraw p69 withcolor dark_olive_green;
  filldraw p71 withcolor dark_olive_green;


% %% *** (3) Hexagon 4

  filldraw p80 withcolor dark_blue;
  unfilldraw p81;

  filldraw p83 withcolor dark_olive_green;

  filldraw p84 withcolor dark_blue;
  unfilldraw p85;

  filldraw p87 withcolor orange;

  filldraw p88 withcolor dark_blue;
  unfilldraw p89;

  filldraw p91 withcolor dark_olive_green;
  
%% ** (2) Hexagon 5

  filldraw p100 withcolor dark_blue;
  unfilldraw p101;

  fill p103 withcolor orange;

  filldraw p104 withcolor dark_blue;
  unfilldraw p105;

%% *** (3)
  
%% ** (2) End of Fig. 1

endfig;

%% * (1) Macro generate_pattern

%% generate_pattern generates the pattern in black and white.
%% A pattern unit consists of two hexagons, like 1 and 3 in figure 0.
%% This unit is repeated `horiz_ctr' times horizontally.  Then, the resulting
%% units are repeated `vert_ctr' times vertically.

%% The meanings of the other parameters should be obvious.
%% LDF 2022.03.01.

def generate_pattern (expr scale_val, horiz_ctr, vert_ctr, pen_wd_outer, pen_wd_inner, pen_wd_single,
                      pen_wd_rectangle, cross_hair_horiz, cross_hair_vert, ddo_clip, ddo_labels) =

%% ** (2)

  begingroup;

  save A, P, W, T, j;
  
  pair A[];
  path P[];
  picture W[];
  transform T[];

  for i = 21 upto 26:
    draw p[i] scaled scale_val withpen pencircle scaled pen_wd_outer;
  endfor;

  for i = 21 upto 26:
    undraw p[i] scaled scale_val withpen pencircle scaled pen_wd_inner;
  endfor;

  draw p6 scaled scale_val withpen pencircle scaled pen_wd_single;

  for i = 11 upto 15:
    draw p[i] scaled scale_val withpen pencircle scaled pen_wd_single;
  endfor;
  
  W0 = currentpicture;
  
  for i = 0 upto 5:
    A[i] = Z[i] scaled scale_val;
  endfor;

  T0 = identity shifted (A0 - A2);
  
  for i = 6 upto 11:
    A[i] = (Z[i-6] scaled scale_val) transformed T0;
  endfor;
  
  W1 = W0 transformed T0;

  addto currentpicture also W1;

  W2 = currentpicture;

  T1 = identity shifted (A7 - A3);
  
  numeric j;
  j = horiz_ctr - 1;

  W3 = W2;

  A20 = Z21 scaled scale_val;
  A21 = Z32 scaled scale_val;
  A22 = Z29 scaled scale_val;
  A23 = Z31 scaled scale_val;

  A24 = A23;
  A25 = A4;


  for i = 1 upto j:
    W3 := W3 transformed T1;
    draw W3;
    A24 := A24 transformed T1;
  endfor;

  W4 = currentpicture;

  T2 = identity shifted (A4 - A2);

  j := vert_ctr - 1;

  W5 = W4;

  for i = 1 upto j:
    W4 := W4 transformed T2;
    draw W4;
    A25 := A25 transformed T2;
    %% 
    % if odd i:
    %   draw W4 withcolor blue;
    % else:
    %   draw W4 withcolor red;
    % fi;
    %%
  endfor;

  A26 = 1.5[A24, A24 shifted (A23 - A22)];
  
  A27 = (xpart A26, ypart A25);

  A28 = (xpart A22, ypart A0);
  A29 = (xpart A26, ypart A0);
  
  P0 = A28 -- A29 -- A27 -- A25 -- cycle;

  if ddo_clip:
    clip currentpicture to P0;
  fi;

  draw P0 withpen pencircle scaled pen_wd_rectangle;

  if known pattern_center:
    pattern_center := .5[A28, A27];
  fi;

  if known upper_left:
    upper_left := A28;
  fi;

  if known upper_right:
    upper_right := A29;
  fi;

  if known lower_left:
      lower_left := A25;
  fi;
  
  if known lower_right:
    lower_right := A27;
  fi;

  
%% ** (2)
  
  if ddo_labels:
    dotlabel.top(btex $A_0$ etex, A0);
    dotlabel.top(btex $A_1$ etex, A1);
    dotlabel.top(btex $A_2$ etex, A2);
    dotlabel.lft(btex $A_3$ etex, A3);
    dotlabel.lft(btex $A_4$ etex, A4);
    dotlabel.rt(btex $A_5$ etex, A5);
    dotlabel.top(btex $A_6$ etex, A6);
    dotlabel.top(btex $A_7$ etex, A7);
    %dotlabel.top(btex $A_8$ etex, A8);
    %dotlabel.top(btex $A_9$ etex, A9);
    dotlabel.lft(btex $A_{10}$ etex, A10);
    dotlabel.rt(btex $A_{11}$ etex, A11);

    dotlabel.top(btex $A_{20}$ etex, A20);
    dotlabel.top(btex $A_{21}$ etex, A21);
    dotlabel.top(btex $A_{22}$ etex, A22);
    dotlabel.top(btex $A_{23}$ etex, A23);
    dotlabel.top(btex $A_{24}$ etex, A24);
    dotlabel.top(btex $A_{25}$ etex, A25);
    dotlabel.top(btex $A_{26}$ etex, A26);
    dotlabel.top(btex $A_{27}$ etex, A27);
    dotlabel.top(btex $A_{28}$ etex, A28);
    dotlabel.top(btex $A_{29}$ etex, A29);
  fi;


  
endgroup;

%% ** (2)

enddef;

%% * (1) Macro crosshair

def crosshair (expr pt_pos, ooffset_h, ooffset_v, line_len, ppen_wd,
                    ddo_square, ssquare_proportion) =

  begingroup;

    save A;
    pair A[];

    A0 = pt_pos shifted (ooffset_h, ooffset_v);
    A1 = A0 shifted (line_len, 0);
    A2 = A0 shifted (-line_len, 0);
    A3 = A0 shifted (0, line_len);
    A4 = A0 shifted (0, -line_len);

    for i = 1 upto 4:
      draw A0 -- A[i] withpen pencircle scaled ppen_wd;
    endfor;

    if ddo_square:
      draw (unitsquare scaled (2line_len * ssquare_proportion) shifted A0)
	  shifted (-.5line_len, -.5line_len);
    fi;

    
  endgroup;
  
enddef;


%% * (1) Fig. 2:  Pattern clipped to rectangle.  Fits within 24cm circle.
%%                Non-reversed version.

pair center_top;
pair center_bot;
pair center_lft;
pair center_rt;

beginfig(2);

%% Arguments to generate_pattern:
%% (expr scale_val, horiz_ctr, vert_ctr, pen_wd_outer, pen_wd_inner, pen_wd_single, pen_wd_rectangle,
%%       cross_hair_horiz, cross_hair_vert, ddo_clip, ddo_labels)

  pair pattern_center;
  pattern_center = origin;

  pair upper_left;
  upper_left = origin;

  pair upper_right;
  upper_right = origin;

  pair lower_left;
  lower_left = origin;

  pair lower_right;
  lower_right = origin;

  generate_pattern (1.825, 2, 2, 2mm, .75mm, .5mm, .75mm, 0, 0, true, false);

  %dotlabel.top("Center", pattern_center);

%% ** (2)
  
  pickup medium_pen;
  draw fullcircle scaled 24cm shifted pattern_center;

  % label.top(btex {\large 26} etex, (26cm, 0));
  % label.ulft(btex {\large UL} etex, upper_left);
  % label.llft(btex {\large LL} etex, lower_left);
  % label.urt(btex {\large UR} etex, upper_right);
  % label.lrt(btex {\large LR} etex, lower_right);


%% ** (2) Guidelines
  
  pair B[];

  B0 = upper_left shifted (-6cm, 1.5cm);
  B1 = upper_right shifted (6cm, 1.5cm);
  B2 = lower_left shifted (-6cm, -1.5cm);
  B3 = lower_right shifted (6cm, -1.5cm);

  draw B0 -- B1 withcolor gray withpen medium_pen dashed evenly;
  draw B2 -- B3 withcolor gray withpen medium_pen dashed evenly;

  B4 = upper_left shifted (0, 6cm);
  B5 = upper_right shifted (0, 6cm);
  B6 = lower_left shifted (0, -6cm);
  B7 = lower_right shifted (0, -6cm);

  draw upper_left  -- B4 withcolor gray withpen medium_pen dashed evenly;
  draw upper_right -- B5 withcolor gray withpen medium_pen dashed evenly;
  draw lower_left  -- B6 withcolor gray withpen medium_pen dashed evenly;
  draw lower_right -- B7 withcolor gray withpen medium_pen dashed evenly;
  
  B8 = .5[upper_left, upper_right];
  B9 = B8 shifted (0, 6cm);

  draw B8 -- B9 withcolor gray withpen medium_pen dashed evenly;  
  
  B10 = .5[lower_left, lower_right];
  B11 = B10 shifted (0, -6cm);

  draw B10 -- B11 withcolor gray withpen medium_pen dashed evenly;  
  
  B12 = .5[upper_left, lower_left];
  B13 = B12 shifted (-6cm, 0);

  draw B12 -- B13 withcolor gray withpen medium_pen dashed evenly;  

  B14 = .5[upper_right, lower_right];
  B15 = B14 shifted (6cm, 0);

  draw B14 -- B15 withcolor gray withpen medium_pen dashed evenly;  

%% ** (2) Crosshairs
  
  crosshair(upper_left, 1.5cm, 1.5cm, 1cm, .5mm, true, .5);
  crosshair(upper_right, -1.5cm, 1.5cm, 1cm, .5mm, true, .5);
  crosshair(lower_left, 1.5cm, -1.5cm, 1cm, .5mm, true, .5);
  crosshair(lower_right, -1.5cm, -1.5cm, 1cm, .5mm, true, .5);

  crosshair(.5[upper_left, upper_right], 0, 1.5cm, 1cm, .5mm, true, .5);
  crosshair(.5[lower_left, lower_right], 0, -1.5cm, 1cm, .5mm, true, .5);

  crosshair(.5[upper_left, lower_left] shifted (.1cm-3pt, 0), -1cm, 0, 1cm, .5mm, true, .5);
  crosshair(.5[upper_right, lower_right] shifted (-.1cm+3pt, 0), 1cm, 0, 1cm, .5mm, true, .5);

  center_top = .5[upper_left, upper_right];
  center_bot = .5[lower_left, lower_right];
  center_lft = .5[upper_left, lower_left];
  center_rt  = .5[upper_right, lower_right];

  w0 = currentpicture;
  
endfig;

%% ** (2) End of Fig. 2

%% * (1) Fig. 3:  Pattern clipped to rectangle.  Fits within 24cm circle.
%%                Reversed version.

beginfig(3);
  currentpicture := w0 reflectedabout (center_top, center_bot);
endfig;

%% * (1) End

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
