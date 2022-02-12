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

outline (65, 65, "cmbx12", .11, big_pen, do_black, do_labels); %% A
outline (69, 69, "cmbx12", .11, big_pen, do_black, do_labels); %% E
outline (84, 84, "cmbx12", .11, big_pen, do_black, do_labels); %% T
outline (88, 88, "cmbx12", .11, big_pen, do_black, do_labels); %% X

%% * (1)

beginfig(0);

%% ** (2)
  
  transform t[];
  
  pickup medium_pen;
  
  draw (-7cm, -7cm) -- (7cm, -7cm) -- (7cm, 7cm) -- (-7cm, 7cm) -- cycle;
  draw fullcircle scaled 11cm;
  draw fullcircle scaled 10cm;

  t69 = identity shifted -p[69][0][10];
  t84 = (identity shifted ((p[69][0][17] transformed t69) - (p[84][0][15])))
               shifted (5pt, 0);
  t88 = identity shifted (2cm, -1cm);

  % E.dx = E.dy = 0;
  % boxit.E(v[69] transformed t69);
  % drawboxed(E);
  
  draw v[84] transformed t84;
  draw v[69] transformed t69;
  draw v[88] transformed t88;

  z0 = (5cm, 0);
  z1 = z0 rotated 30;
  z2 = z1 reflectedabout ((0, -1cm), (0, 1cm));
  z3 = z0 reflectedabout ((0, -1cm), (0, 1cm));
  z4 = .5[p[69][0][17] transformed t69, p[69][0][16] transformed t69];

  w0 = currentpicture;

  drawdot origin withpen pencircle scaled 5pt withcolor red; 
  
%% ** (2)

%% *** (3) T

  dotlabel.rt(btex $z_0$ etex, z0);
  dotlabel.rt(btex $z_1$ etex, z1);
  dotlabel.lft(btex $z_2$ etex, z2);
  dotlabel.lft(btex $z_3$ etex, z3);
  dotlabel.top(btex $z_4$ etex, z4);
  
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
  
  dotlabel.rt("0", p[88][0][0] transformed t88);
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
  dotlabel.top("19", p[88][0][19] transformed t88);
  dotlabel.ulft("20", p[88][0][20] transformed t88);

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
