%% cmrm_test.mp
%% Created by Laurence D. Finston (LDF) Thu 14 Apr 2022 12:49:30 AM CEST

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


%% * (1) Top.

%tracingonline := 1;
prologues := 3;
outputtemplate := "%j%3c.eps";

% This is how labels are rotated:
% label  (btex $q_2^0$ etex rotated 30,    point  0 of p2);

%% * (1)


verbatimtex \font\eurm=eurm10 scaled 16000
  \font\cmssbx=cmssbx10 scaled 8000
  etex;

path q[];
picture v[];

numeric dark_grey;
dark_grey = .5;
pen small_pen;
pen medium_pen;
pen big_pen;
pen huge_pen;

small_pen = pencircle scaled .25mm;

medium_pen = pencircle scaled .5mm;

big_pen = pencircle scaled 1.5mm;

huge_pen = pencircle scaled 2mm;

pickup medium_pen;

picture w[];

boolean do_labels;
do_labels = true; % false;

bboxmargin := 0;

%input TEX.mp;
input boxes.mp;

%% * (1) outline

def outline (expr char_ctr, picture_ctr, font, sscale_factor, ppen, ddo_black, ddo_labels) =

%% ** (2)
    
  message "Entering `outline'.";
  message "char_ctr == " & decimal char_ctr;
  message "";

  begingroup;
    
    save x, y;

    currentpicture := nullpicture;
    
    path q;
    path u;

    pair a[][];
    
    numeric m;

    m = 0;

    interim ahlength := 10bp;
    interim ahangle := 25;
    interim bboxmargin := 0;
    
    w[picture_ctr] := glyph char_ctr of font;
    
    u = bbox(w[picture_ctr] scaled sscale_factor);

    pair center;
    center = .5[point 0 of u, point 2 of u];
    
    for item within w[picture_ctr]:
      r[picture_ctr][m] := pathpart item scaled sscale_factor;
      if ddo_black:
	draw r[picture_ctr][m] withpen ppen;
      else:
	drawarrow r[picture_ctr][m] withcolor (.6,.9,.6) withpen medium_pen;
      fi
      for j = 0 upto length r[picture_ctr][m]:
	a[m][j] = p[picture_ctr][m][j] = point j of r[picture_ctr][m];
	if not ddo_black:
	  pickup pencircle scaled .15;
	  draw (point j of r[picture_ctr][m] -- precontrol j of r[picture_ctr][m])
	    dashed evenly withcolor blue withpen medium_pen;
	  draw (point j of r[picture_ctr][m] -- postcontrol j of r[picture_ctr][m])
	    dashed evenly withcolor blue withpen medium_pen;
	  pickup pencircle scaled 1.5;
	  draw precontrol j of r[picture_ctr][m] withcolor red withpen medium_pen;
	  draw postcontrol j of r[picture_ctr][m] withcolor red withpen medium_pen;
	  pickup pencircle scaled 1.5;
	  draw point j of r[picture_ctr][m] withcolor black withpen medium_pen;
	fi
      endfor;
      m := incr m;
    endfor;

    
    v[picture_ctr] = currentpicture;

  endgroup;
  
  message "Exiting `outline'.";

%% ** (2)

enddef;

%% * (1)

path r[][];

pair p[][][];

string S;
S = "";

boolean do_black;
do_black = true; % false;

boolean do_labels;
do_labels = true; % false;

boolean do_reflect;
do_reflect = false; % true;


%% * (1)

fontmapline "cmr10 CMR10 <cmr10.pfb";
fontmapline "cmbx12 CMBX12 <cmbx12.pfb";
fontmapline "cmssbx10 CMSSBX10 <cmssbx10.pfb";
fontmapline "eurm10 EURM10 <eurm10.pfb";
fontmapline "eurb10 EURB10 <eurb10.pfb";
fontmapline "eufm10 EUFM10 <eufm10.pfb"; %% Euler Fraktur medium
fontmapline "eufb10 EUFB10 <eufb10.pfb"; %% Euler Fraktur bold
fontmapline "cmmi10 CMMI10 <cmmi10.pfb"; 
fontmapline "cmr7 CMR7 <cmr7.pfb"; 
fontmapline "manfnt MANFNT <manfnt.pfb";

%% DIN A Series, Width X Height
%%

% DIN A4 Portrait: 210 X 297   
% DIN A5 Portrait: 148 X 210   
% DIN A6 Portrait: 105 X 148
% DIN A7 Portrait:  74 X 105
% DIN A8 Portrait:  52 X  74

%% LDF 2022.01.02.  Printed out using scaling_factor := .1 and scaling_factor := .13.
%% Both of these sizes look good.

numeric outer_frame_wd;
numeric outer_frame_ht;

numeric inner_frame_wd;
numeric inner_frame_ht;

path inner_frame;
path outer_frame;

%% ** (2) Computer Moder Roman Bold, 10pt

do_black := true;

%% ** (2) Fig. 103 ("g")

outline (103, 103, "cmr10", .25, big_pen, do_black, do_labels); 

path frame;
numeric frame_wd;
numeric frame_ht;

frame_wd = 12cm;
frame_ht = 8cm;

frame =    ((-.5frame_wd, -.5frame_ht) -- (.5frame_wd, -.5frame_ht) -- (.5frame_wd, .5frame_ht)
        -- (-.5frame_wd, .5frame_ht) -- cycle) shifted (.5frame_wd - 1.25cm, .125frame_ht);

beginfig(103) 
  
  numeric dark_grey;
  dark_grey = .5;

  numeric light_grey;
  light_grey = .75;

  pickup medium_pen;
  draw frame;

  g.dx = g.dy = 0cm;
  boxit.g(v[103]);
  draw pic(g) withpen medium_pen;

  draw bpath g withpen medium_pen withgreyscale light_grey;

  for i = 0 upto 3:
    z[i] = point i of bpath g;
  endfor;

  message "y3 - y0 == " & decimal (y3 - y0);
  message "(y3 - y0) * 4 == " & decimal ((y3 - y0) * 4);

 
  dotlabel.llft(btex $z_0$ etex, z0);
  dotlabel.lrt(btex $z_1$ etex, z1);
  dotlabel.urt(btex $z_2$ etex, z2);
  dotlabel.ulft(btex $z_3$ etex, z3);
  
  n = length r[103][1] - 1;
  
  % for i = 1 upto n:
  %   dotlabel.top(decimal i, point i of r[103][1]);
  % endfor;

  dotlabel.rt(   "0",  point  0 of r[103][0]);
  dotlabel.rt(   "1",  point  1 of r[103][0]);
  dotlabel.bot(  "2",  point  2 of r[103][0]);
  dotlabel.rt(   "3",  point  3 of r[103][0]);
  dotlabel.rt(   "4",  point  4 of r[103][0]);
  dotlabel.lft(  "5",  point  5 of r[103][0]);
  dotlabel.rt(   "6",  point  6 of r[103][0]);
  dotlabel.llft( "7",  point  7 of r[103][0]);
  dotlabel.bot(  "8",  point  8 of r[103][0]);
  dotlabel.rt(   "9",  point  9 of r[103][0]);
  dotlabel.top(	"10",  point 10 of r[103][0]);
  dotlabel.top(	"11",  point 11 of r[103][0]);
  dotlabel.top(	"12",  point 12 of r[103][0]);
  dotlabel.lft(	"13",  point 13 of r[103][0]);
  dotlabel.lft(	"14",  point 14 of r[103][0]);
  dotlabel.lft(	"15",  point 15 of r[103][0]);
  dotlabel.lft(	"16",  point 16 of r[103][0]);
  dotlabel.lft(	"17",  point 17 of r[103][0]);
  dotlabel.bot(	"18",  point 18 of r[103][0]);
  dotlabel.rt(  "19",  point 19 of r[103][0]);
  dotlabel.urt(	"20",  point 20 of r[103][0]);
  dotlabel.top(	"21",  point 21 of r[103][0]);
  dotlabel.top(	"22",  point 22 of r[103][0]);
   
  
  %show r[103][0];
  %show r[103][1];

  dotlabel.lft(btex (0, 0) etex, origin);

  z4 = whatever[z0, z3];
  z5 = whatever[z1, z2];

  y4 = y5 = 0;

  draw z4 -- z5 withgreyscale light_grey;  

  %dotlabel.top(btex $z_4$ etex, z4);
  %dotlabel.rt(btex $z_5$ etex, z5);

  verbatimtex "\font\huge=cmr10 scaled 25750" etex;

  v303 = btex \baselineskip=0pt\parskip=0pt\parindent=0pt%
\setbox0=\hbox{\huge g}\dimen0=\ht0\advance\dimen0 by .5pt
\dimen1=\dimen0\advance\dimen0 by 1pt
\dimen2=\wd0\advance\dimen2 by .5pt
\dimen3=\dp0\advance\dimen3 by .25pt
\vtop to 0pt{\hbox to 0pt{\vrule height \ht0 depth \dp0 width 1pt\hss}\vss}%                      Left vertical
\vtop to 0pt{\hbox to 0pt{\hskip1pt\vrule height .5pt depth .5pt width \wd0\hss}\vss}%            Horizontal at baseline
\vtop to 0pt{\hbox to 0pt{\hskip.25pt\vrule height \dimen0 depth -\dimen1 width\dimen2\hss}\vss}% Top Horizontal
\vtop to 0pt{\hbox to 0pt{\hskip\wd0\vrule height \ht0 depth \dp0 width 1pt\hss}\vss}%            Right vertical
% Horizontal at bottom
\vtop to 0pt{\vskip\dimen3\hbox to 0pt{\hskip.25pt\vrule height .5pt depth .5pt width \dimen2\hss}\vss}% 
% The letter
\vtop to \ht0{\hbox{{\huge g}}} etex;

  gg.dx = gg.dy = 0cm;
  boxit.gg(v[303]);

  for i = 0 upto 3:
    z[10+i] = point i of bpath gg;
  endfor;

  transform t[];
  t0 = (identity shifted (z1 - z10)) shifted (1cm, 0);

  draw bpath gg transformed t0 withpen big_pen withcolor red;
  
  dotlabel.bot(btex $z_{10}$ etex, z10 transformed t0);
  dotlabel.bot(btex $z_{11}$ etex, z11 transformed t0);
  dotlabel.rt(btex $z_{12}$ etex, z12 transformed t0);
  dotlabel.lft(btex $z_{13}$ etex, z13 transformed t0);

  draw (pic(gg) transformed t0) shifted (0, 2pt);

  message "y2:  " & decimal y2;
  message "y13:  " & decimal y13;
  message "y13 - y2:  " & decimal (y13 - y2);
  message "y13 / y2:  " & decimal (y13 / y2);
    
  y20 = y2;
  x20 = xpart (z12 transformed t0);

  draw z2 -- z20;
  
endfig; 

beginfig(203);

  v203 := glyph 103 of "cmr10";
  q203  = bbox(v203);

  draw v203;
  
  dotlabel.llft("0", point 0 of q203);
  dotlabel.lrt("1", point 1 of q203);
  dotlabel.urt("2", point 2 of q203);
  dotlabel.ulft("3", point 3 of q203);

  draw q203;

  z1 = point 1 of q203;
  z2 = point 2 of q203;
  
  a = y2 - y1;

  message "y2 - y1 == " & decimal a; 

endfig;

end;



%% ** (2) Fig. 65 ("A")

beginfig(65) 
  A.dx = A.dy = .5cm;
  boxit.A(v[65]);
  draw pic(A) withpen big_pen;
endfig; 

%% ** (2) Fig. 97 ("a")

beginfig(97) 
  a.dx = a.dy = .5cm;
  boxit.a(v[97]);
  draw pic(a) withpen big_pen;
endfig; 




%% *** (3)

%% ** (2)

end;

      
%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% eval:(outline-minor-mode t)
%% outline-regexp:"%% *\\*+\\|@\\*[0-9]*"
%% End:
