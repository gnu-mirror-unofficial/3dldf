%% ttemp.mp
%% Created by Laurence D. Finston (LDF) Fri 24 Dec 2021 07:01:37 AM CET

%%%% * Copyright and License.

%%%% This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
%%%% Copyright (C) 2021 The Free Software Foundation, Inc.

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

tracingonline := 1;
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

small_pen = pencircle scaled .25mm;

medium_pen = pencircle scaled .5mm;

big_pen = pencircle scaled 1mm;

pickup medium_pen;

picture w[];

boolean do_labels;
do_labels = true; % false;

bboxmargin := 0;

input TEX.mp;

input outline_ttemp.mac;

path r[][];

pair p[][][];

string S;
S = "";

boolean do_black;
do_black = true; % false;

boolean do_reflect;
do_reflect = false; % true;


%% * (1)

fontmapline "cmr10 CMR10 <cmr10.pfb";
fontmapline "cmssbx10 CMSSBX10 <cmssbx10.pfb";
fontmapline "eurm10 EURM10 <eurm10.pfb";
fontmapline "eurb10 EURB10 <eurb10.pfb";
fontmapline "eufm10 EUFM10 <eufm10.pfb"; %% Euler Fraktur medium
fontmapline "eufb10 EUFB10 <eufb10.pfb"; %% Euler Fraktur bold
fontmapline "cmmi10 CMMI10 <cmmi10.pfb"; 
fontmapline "cmr7 CMR7 <cmr7.pfb"; 

%% * (1) AMS Euler

%% https://en.wikipedia.org/wiki/AMS_Euler
%% eurb10, Euler roman bold 
%% eusb10, Euler script bold
%% eusm10, Euler script medium

%% ** (2) Sans Serif Bold Extended

% outline (65, 65, "cmssbx10", .5, 0, 0, 0, 16cm, 16cm, 0, false, big_pen, false);

% end;


%% ** (2) Euler Roman Bold, small.

% do_black   := true; % false
% do_reflect := true; % false
%% DIN A Series, Width X Height
%%

% A4 Portrait: 210 X 297   
% A5 Portrait: 148 X 210   
% A6 Portrait: 105 X 148
% A7 Portrait:  74 X 105
% A8 Portrait:  52 X  74

%% LDF 2022.01.02.  Printed out using scaling_factor := .1 and scaling_factor := .13.
%% Both of these sizes look good.

numeric outer_frame_wd;

outer_frame_wd = 52mm;

outline (65, 65, "eurb10", .13, 0,       0, 0, 42mm, 64mm, outer_frame_wd, 74mm, 0, false, big_pen, do_black, do_reflect); %% A  
outline (66, 66, "eurb10", .13, -.125cm, 0, 0, 42mm, 64mm, outer_frame_wd, 74mm, 0, false, big_pen, do_black, do_reflect); %% B
outline (67, 67, "eurb10", .13, -.25cm,  0, 0, 42mm, 64mm, outer_frame_wd, 74mm, 0, false, big_pen, do_black, do_reflect); %% C

%% !! START HERE: LDF 2022.01.02.  Get shifting to work.

beginfig(0);
  currentpicture := v[65];
  addto currentpicture also v[66] shifted (outer_frame_wd + 5mm, 0);
  %addto currentpicture also v[67] shifted (2*outer_frame_wd, 0);
  draw b[65][0] -- b[65][0] shifted (outer_frame_wd, 0) withcolor red withpen pencircle scaled 2pt;
endfig;



% outline (68, 68, "eurb10", .13, -.125cm, 0, 0, 42mm, 64mm, outer_frame_wd, 74mm, 0, false, big_pen, do_black, do_reflect); %% D
% outline (69, 69, "eurb10", .13, 0, 0, 0, 42mm, 64mm, outer_frame_wd, 74mm, 0, false, big_pen, do_black, do_reflect);       %% E
% outline (70, 70, "eurb10", .13, 0, 0, 0, 42mm, 64mm, outer_frame_wd, 74mm, 0, false, big_pen, do_black, do_reflect);       %% F
% outline (71, 71, "eurb10", .13, -.25cm, 0, 0, 42mm, 64mm, outer_frame_wd, 74mm, 0, false, big_pen, do_black, do_reflect);  %% G
% outline (72, 72, "eurb10", .13, -.125cm, 0, 0, 42mm, 64mm, outer_frame_wd, 74mm, 0, false, big_pen, do_black, do_reflect); %% H

end;

%% ** (2) Euler Roman Bold, Large

do_black := true;

for i = 48 upto 57:  %% Numerals
  outline (i, i, "eurb10", .2125, 0, 0, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);
endfor;

for i = 65 upto 90: %% Uppercase letters
  if (i = ASCII "J") or (i = ASCII "Q"):
    outline (i, i, "eurb10", .2125, 0, 1cm, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);
  else:
    outline (i, i, "eurb10", .2125, 0, 0, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);
  fi
endfor;


for i = 97 upto 122: %% Lowercase letters
  outline (i, i, "eurb10", .2125, 0, 0, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);
endfor;

%% Fit multiple letters onto a figure

outline (65, 165, "eurb10", .2125, -1.25cm, 2cm, 180, 9.5cm, 9.5cm, 0, false, big_pen, do_black); %% A
outline (65, 265, "eurb10", .2125, 1.3cm, -1.5cm, 0, 9.5cm, 9.5cm, 0, false, big_pen, do_black);  %% A

end;



      
%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% outline-minor-mode:t
%% End:
