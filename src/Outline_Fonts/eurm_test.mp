%% eurm_test.mp
%% Created by Laurence D. Finston (LDF) Sun 10 Apr 2022 10:10:14 AM CEST

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
pen huge_pen;

small_pen = pencircle scaled .25mm;

medium_pen = pencircle scaled .5mm;

big_pen = pencircle scaled 1mm;

huge_pen = pencircle scaled 2mm;

pickup medium_pen;

picture w[];

boolean do_labels;
do_labels = true; % false;

bboxmargin := 0;

input TEX.mp;
input boxes.mp;

input outline_eurm_test.mac;

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

%% * (1) AMS Euler

%% https://en.wikipedia.org/wiki/AMS_Euler
%% eurb10, Euler roman bold 
%% eusb10, Euler script bold
%% eusm10, Euler script medium

%% ** (2) Euler Roman Bold, small.

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

%% ** (2) Euler Roman Bold, Large

do_black := true;

for i = 48 upto 57:  %% Numerals
  outline (i, i, "eurb10", .25, big_pen, do_black, do_labels); 
endfor;

for i = 65 upto 90: %% Uppercase letters
  outline (i, i, "eurb10", .25, big_pen, do_black, do_labels); 
endfor;

for i = 97 upto 122: %% Lowercase letters
  outline (i, i, "eurb10", .25, big_pen, do_black, do_labels); 
endfor;

%% ** (2) Fig. 65 ("A")

beginfig(65) 
  A.dx = A.dy = .5cm;
  boxit.A(v[65]);
  draw pic(A) withpen big_pen;
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
