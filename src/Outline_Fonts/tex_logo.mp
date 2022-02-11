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

verbatimtex \font\cmssbx=cmssbx10 scaled 8000 etex;

path p[];
path q[];
picture v[];
picture w[];

numeric dark_grey;
dark_grey = .5;
pen small_pen;
pen medium_pen;
pen big_pen;

small_pen = pencircle scaled .25mm;
medium_pen = pencircle scaled .5mm;
big_pen = pencircle scaled 1mm;

let large_pen = big_pen;

pickup medium_pen;

path r[][];

pair p[][][];

string S;
S = "";

%bboxmargin := 0;

boolean do_black;
boolean do_labels;
boolean do_rounded_corners;

do_labels          = true;  % false;
do_black           = false; % true;
do_rounded_corners = false; % true;

%input boxes.mp;


%input outline_tex_logo.mac;

%% * (1)

%% * (1)

% fontmapline "cmr10 CMR10 <cmr10.pfb";
% fontmapline "cmbx12 CMBX12 <cmbx12.pfb";


%% * (1)

% outline (65, 65, "cmbx12", .25, big_pen, do_black, do_labels); %% A
% outline (69, 69, "cmbx12", .25, big_pen, do_black, do_labels); %% E
% outline (84, 84, "cmbx12", .25, big_pen, do_black, do_labels); %% T
% outline (88, 88, "cmbx12", .25, big_pen, do_black, do_labels); %% X

% ?T 84
% ?X 88

%% \def\TeX{T\kern -.1667em\lower .5ex\hbox {E}\kern -.125em X}
% beginfig(0);

beginfig(0);

  pickup medium_pen;
  
  %do_labels := false; % true
  
  path q[];

  draw (-7cm, -7cm) -- (7cm, -7cm) -- (7cm, 7cm) -- (-7cm, 7cm) -- cycle;
  draw fullcircle scaled 11cm;
  % draw fullcircle scaled 10cm; 
  dotlabel.top("", origin);

  % T.dx = T.dy = 1cm;
  % boxit.T(v[84]);
  
  %drawunboxed(T);
  
  % bboxmargin := 2cm;
  % message "bboxmargin:";
  % show bboxmargin;
  
  %currentpicture := currentpicture reflectedabout((0, -1), (0, 1));
  
endfig;

end;

%% * (1)

%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% eval:(outline-minor-mode t)
%% outline-regexp:"%% *\\*+\\|@\\*[0-9]*"
%% End:
