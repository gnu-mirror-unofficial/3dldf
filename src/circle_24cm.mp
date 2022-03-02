%% circle_24cm.mp
%% Created by Laurence D. Finston (LDF) Wed 02 Mar 2022 03:41:36 PM CET

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

prologues := 3;
outputtemplate := "%j_%c.eps";


%% * (1) Global variables

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

path p[];
path q[];
transform t[];

pair d[];
pair Z[];

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

pair center_left;
center_left = origin;

pair center_right;
center_right = origin;

pair center_top;
center_top = origin;

pair center_bot;
center_bot = origin;

pair center_rectangle;
center_rectangle = origin;


%% * (1)

beginfig(0);

%% ** (2)

  pickup medium_pen;

  draw fullcircle scaled 24cm;% shifted (6cm, 0);
  dotlabel.top("origin", origin);
  dotlabel.rt(btex $(12\rm{cm}, 0)$ etex, (12cm, 0));

%% ** (2) End of Fig. 0
    
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
