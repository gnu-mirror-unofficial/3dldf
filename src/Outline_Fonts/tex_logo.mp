%% tex_logo.mp
%% Created by Laurence D. Finston (LDF) Thu 10 Feb 2022 05:38:00 AM CET

%%%% * Copyright and License.

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

%%%% Please send bug reports to Laurence.Finston@@gmx.de
%%%% The mailing list help-3dldf@gnu.org is available for people to 
%%%% ask other users for help.  
%%%% The mailing list info-3dldf@gnu.org is for sending 
%%%% announcements to users. To subscribe to these mailing lists, send an 
%%%% email with "subscribe <email-address>" as the subject.  

%%%% The author can be contacted at: 

%%%% Laurence D. Finston 
%%%% c/o Free Software Foundation, Inc. 
%%%% 51 Franklin St, Fifth Floor 
%%%% Boston, MA  02110-1301  
%%%% USA

%%%% Laurence.Finston@gmx.de 


prologues := 3;
outputtemplate := "%j%3c.eps";



pen medium_pen;
medium_pen = pencircle scaled .5mm;

fontmapline "cmr10 CMR10 <cmr10.pfb";
fontmapline "cmbx12 CMBX12 <cmbx12.pfb";

path p[];
path q[];
picture v[];
picture w[];
path r[][];
pair p[][][];
string S;
S = "";
boolean do_black;
boolean do_labels;
boolean do_rounded_corners;

do_labels          = true;  % false;
do_black           = false; % true;
do_rounded_corners = false; % true;

input outline_tex_logo.mac;
input boxes.mp;

numeric scale_factor;
scale_factor = .125;

outline (69, 69, "cmbx12", scale_factor, big_pen, do_black, do_labels); %% E
outline (84, 84, "cmbx12", scale_factor, big_pen, do_black, do_labels); %% T
outline (88, 88, "cmbx12", scale_factor, big_pen, do_black, do_labels); %% X

%% * (1)

beginfig(0);

%% ** (2)
  
  transform t[];
  
  pickup medium_pen;
  
  draw (-6cm, -6cm) -- (6cm, -6cm) -- (6cm, 6cm) -- (-6cm, 6cm) -- cycle;
  draw fullcircle scaled 11cm;
  draw fullcircle scaled 10cm withpen pencircle scaled 2mm;
  undraw fullcircle scaled 10cm withpen pencircle scaled 1mm;

  t84 = (identity shifted (p[69][0][17] - p[84][0][15]))
               shifted (6pt, 0);
  t88 = (identity shifted (p[69][0][1] - p[88][0][23]))
               shifted (-4pt, (ypart p[88][0][3] - ypart p[88][0][5]));


  pair T[];
  pair E[];
  pair X[];

  pen large_pen;
  large_pen = pencircle scaled 6pt;

  T1 = p[84][0][1] transformed t84;
  T2 = p[84][0][2] transformed t84;

  z0 = (xpart T2, ypart T1);


  E22 = p[69][0][22];

  z1 = (xpart z0, ypart E22);


  X33 = p[88][0][33] transformed t88;

  z2 = (xpart X33, ypart z1);
  z3 = (xpart z2, ypart z0);
  z4 = .5[z1, z3];

  z5 = (x4, .5[ypart (p[84][0][9] transformed t84), ypart (p[84][0][0] transformed t84)]);
  
  t69 = identity shifted -z5; 
  
  draw (v[84] transformed t84) transformed t69;
  draw v[69] transformed t69;
  draw (v[88] transformed t88) transformed t69;

  %drawdot T2 withcolor blue withpen large_pen;

%% ** (2) Cross-hairs
  
  pen small_pen;
  small_pen = pencircle scaled .25mm;

  pickup small_pen;
  
  draw (0, -.25cm) -- (0, .25cm);
  draw (-.25cm, 0) -- (.25cm, 0);

  draw (-5.75cm, -.25cm) -- (-5.75cm, .25cm);
  draw (-6cm, 0) -- (-5.5cm, 0cm);

  draw (5.75cm, -.25cm) -- (5.75cm, .25cm);
  draw (5.5cm, 0cm) -- (6cm, 0);
  
  draw (0cm, -6cm) -- (0cm, -5.5cm);
  draw (0cm, 6cm) -- (0cm, 5.5cm);

  draw (-.25cm, -5.75cm) -- (.25cm, -5.75cm);
  draw (-.25cm, 5.75cm) -- (.25cm, 5.75cm);

  draw (-6cm, -5.75cm) -- (-5.5cm, -5.75cm);
  draw (-5.75cm, -6cm) -- (-5.75cm, -5.5cm);

  draw (6cm, -5.75cm) -- (5.5cm, -5.75cm);
  draw (5.75cm, -6cm) -- (5.75cm, -5.5cm);
  
  draw (6cm, -5.75cm) -- (5.5cm, -5.75cm);
  draw (5.75cm, -6cm) -- (5.75cm, -5.5cm);

  draw (6cm, 5.75cm) -- (5.5cm, 5.75cm);
  draw (5.75cm, 6cm) -- (5.75cm, 5.5cm);

  draw (-6cm, 5.75cm) -- (-5.5cm, 5.75cm);
  draw (-5.75cm, 6cm) -- (-5.75cm, 5.5cm);

  numeric dark_grey;
  dark_grey = .5;
 
  draw (0, -5.5cm) -- (0, 5.5cm) withcolor dark_grey dashed evenly;
  draw (-5.5cm, 0) -- (5.5cm, 0) withcolor dark_grey dashed evenly;
  
  pickup medium_pen;
  
%% ** (2)
  
  w0 = currentpicture;

  draw z0 -- z1 -- z2 -- z3 -- cycle transformed t69;
  drawdot origin withpen pencircle scaled 5pt withcolor red; 
  
%% ** (2)

  t84 := t84 transformed t69;
  t88 := t88 transformed t69;

  dotlabel.ulft(btex $z_0$ etex, z0 transformed t69);
  dotlabel.llft(btex $z_1$ etex, z1 transformed t69);
  dotlabel.lrt(btex $z_2$ etex, z2 transformed t69);
  dotlabel.urt(btex $z_3$ etex, z3 transformed t69);
  %dotlabel.top(btex $z_4$ etex, z4 transformed t69) withcolor blue;
  dotlabel.top(btex $z_5$ etex, z5 transformed t69) withcolor blue;
  
%% *** (3) T

  % dotlabel.rt(btex $z_0$ etex, z0);
  % dotlabel.rt(btex $z_1$ etex, z1);
  % dotlabel.lft(btex $z_2$ etex, z2);
  % dotlabel.lft(btex $z_3$ etex, z3);
  % dotlabel.top(btex $z_4$ etex, z4);
  
  dotlabel.top("0", p[84][0][0] transformed t84);
  dotlabel.top("1", p[84][0][1] transformed t84);
  dotlabel.lft("2", p[84][0][2] transformed t84);
  dotlabel.rt("3", p[84][0][3] transformed t84);
  dotlabel.bot("4", p[84][0][4] transformed t84);
  dotlabel.rt("5", p[84][0][5] transformed t84);
  dotlabel.ulft("6", p[84][0][6] transformed t84);
  dotlabel.ulft("7", p[84][0][7] transformed t84);
  dotlabel.llft("8", p[84][0][8] transformed t84);
  dotlabel.bot("9", p[84][0][9] transformed t84);
  dotlabel.lrt("10", p[84][0][10] transformed t84);
  dotlabel.urt("11", p[84][0][11] transformed t84);
  dotlabel.urt("12", p[84][0][12] transformed t84);
  dotlabel.bot("13", p[84][0][13] transformed t84);
  dotlabel.urt("14", p[84][0][14] transformed t84);
  dotlabel.lft("15", p[84][0][15] transformed t84);
  dotlabel.rt("16", p[84][0][16] transformed t84);
  dotlabel.rt("17", p[84][0][17] transformed t84);

%% *** (3) E
  
  dotlabel.top("0", p[69][0][0] transformed t69);
  dotlabel.lft("1", p[69][0][1] transformed t69);
  dotlabel.top("2", p[69][0][2] transformed t69);
  dotlabel.urt("3", p[69][0][3] transformed t69);
  dotlabel.lft("4", p[69][0][4] transformed t69);
  dotlabel.bot("5", p[69][0][5] transformed t69);
  dotlabel.llft("6", p[69][0][6] transformed t69);
  dotlabel.rt("7", p[69][0][7] transformed t69);
  dotlabel.rt("8", p[69][0][8] transformed t69);
  dotlabel.lft("9", p[69][0][9] transformed t69);
  dotlabel.top("10", p[69][0][10] transformed t69);
  dotlabel.ulft("11", p[69][0][11] transformed t69);
  dotlabel.llft("12", p[69][0][12] transformed t69);
  dotlabel.bot("13", p[69][0][13] transformed t69);
  dotlabel.llft("14", p[69][0][14] transformed t69);
  dotlabel.bot("15", p[69][0][15] transformed t69);
  dotlabel.rt("16", p[69][0][16] transformed t69);
  dotlabel.top("17", p[69][0][17] transformed t69);
  dotlabel.lft("18", p[69][0][18] transformed t69);
  dotlabel.llft("19", p[69][0][19] transformed t69);
  dotlabel.ulft("20", p[69][0][20] transformed t69);
  dotlabel.ulft("21", p[69][0][21] transformed t69);
  dotlabel.bot("22", p[69][0][22] transformed t69);
  dotlabel.bot("23", p[69][0][23] transformed t69);
  dotlabel.lrt("24", p[69][0][24] transformed t69);



%% *** (3) X
  
  dotlabel.urt("0", p[88][0][0] transformed t88);
  dotlabel.bot("1", p[88][0][1] transformed t88);
  dotlabel.bot("2", p[88][0][2] transformed t88);
  dotlabel.bot("3", p[88][0][3] transformed t88);
  dotlabel.rt("4", p[88][0][4] transformed t88);
  dotlabel.top("5", p[88][0][5] transformed t88);
  dotlabel.top("6", p[88][0][6] transformed t88);
  dotlabel.ulft("7", p[88][0][7] transformed t88);
  dotlabel.lft("8", p[88][0][8] transformed t88);
  dotlabel.lft("9", p[88][0][9] transformed t88);
  dotlabel.top("10", p[88][0][10] transformed t88);
  dotlabel.lft("11", p[88][0][11] transformed t88);
  dotlabel.bot("12", p[88][0][12] transformed t88);
  dotlabel.top("13", p[88][0][13] transformed t88);
  dotlabel.top("14", p[88][0][14] transformed t88);
  dotlabel.top("15", p[88][0][15] transformed t88);
  dotlabel.lft("16", p[88][0][16] transformed t88);
  dotlabel.bot("17", p[88][0][17] transformed t88);
  dotlabel.lft("18", p[88][0][18] transformed t88);
  dotlabel.rt("19", p[88][0][19] transformed t88);
  dotlabel.top("20", p[88][0][20] transformed t88);
  dotlabel.top("21", p[88][0][21] transformed t88) withcolor red;
  dotlabel.lft("22", p[88][0][22] transformed t88);
  dotlabel.bot("23", p[88][0][23] transformed t88) withcolor red;
  dotlabel.bot("24", p[88][0][24] transformed t88);
  dotlabel.bot("25", p[88][0][25] transformed t88);
  dotlabel.rt("26", p[88][0][26] transformed t88);
  dotlabel.urt("27", p[88][0][27] transformed t88) withcolor red;
  dotlabel.bot("28", p[88][0][28] transformed t88);
  dotlabel.ulft("29", p[88][0][29] transformed t88);
  dotlabel.ulft("30", p[88][0][30] transformed t88) withcolor red;
  dotlabel.bot("31", p[88][0][31] transformed t88);
  dotlabel.bot("32", p[88][0][32] transformed t88);
  dotlabel.bot("33", p[88][0][33] transformed t88);
  dotlabel.rt("34", p[88][0][34] transformed t88);
  dotlabel.urt("35", p[88][0][35] transformed t88);
  dotlabel.lrt("36", p[88][0][36] transformed t88);
  
%% ** (2)
  
endfig;

%% * (1)

beginfig(1);
  currentpicture := w0;
endfig;

%% * (1)


end;

%% * (1)

%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% eval:(outline-minor-mode t)
%% outline-regexp:"%% *\\*+\\|@\\*[0-9]*"
%% End:
