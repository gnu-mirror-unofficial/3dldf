%% btemp.mp
%% Created by Laurence D. Finston (LDF) Wed 24 Nov 2021 09:21:59 AM CET

%% * (1) Copyright and License.

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


%% ** (2)

prologues := 3;
outputtemplate := "%j%c.eps";


beginfig(0);
  path q;
  pair p[];
  p0 = (0cm, 0cm);
  p1 = (10cm, 0cm);
  p2 = (9cm, -9cm);
  p3 = (0cm, -10cm);
  p4 = (1cm, -1cm);

  q = p0 .. p1 .. p2 .. p3 .. p4 .. cycle;
  draw q;
  pair d;

  for i = 0 upto 4:
    d := direction i of q;
    message decimal i & ": d == (" & decimal xpart d & ", " & decimal ypart d & ")";
    a := angle direction i of q;
    message decimal i & ": a == " & decimal a;
  endfor;
    
  dotlabel.lft(btex $p_0$ etex, p0);
  dotlabel.rt(btex $p_1$ etex, p1);
  dotlabel.rt(btex $p_2$ etex, p2);
  dotlabel.ulft(btex $p_3$ etex, p3);
  dotlabel.ulft(btex $p_4$ etex, p4);

endfig;

end; 


verbatimtex \font\huge=cmr17 scaled 8000 etex;

prologues := 3;
outputtemplate := "%j%c.eps";


beginfig(0);
  pair p[];
  path q[];

  pickup pencircle scaled .5pt;

  p0 = origin;
  p1 = (10cm, 0cm);
  p2 = (9cm, 9cm);
  p3 = (0cm, 10cm);
  p4 = (1cm, 1cm);

  dotlabel.bot(btex $p_0$ etex, p0);
  dotlabel.top(btex $p_1$ etex, p1);
  dotlabel.rt(btex $p_2$ etex, p2);
  dotlabel.top(btex $p_3$ etex, p3);
  dotlabel.rt(btex $p_4$ etex, p3);

  q0 = p0 .. p1 .. p2 .. p3 .. p4 .. cycle;

  draw q0;
  
  q1 = (-5cm, -5cm) -- (15cm, -5cm) -- (15cm, 15cm) -- (-5cm, 15cm) -- cycle;

  draw q1;

  p5 = direction 0 of q0;

  
  write "(" & decimal xpart p5 & ", " & decimal ypart p5 & ")" to "btemp.out";
  
  message "p5:";
  show p5;
  
  
% message "angle direction 0 of q0:"; 
% show angle direction 0 of q0;

% message "angle direction 1 of q0:"; 
% show angle direction 1 of q0;

% message "angle direction 1.5 of q0:"; 
% show angle direction 1.5 of q0;

% message "angle direction 2 of q0:"; 
% show angle direction 2 of q0;

% message "angle direction 3 of q0:"; 
% show angle direction 3 of q0;

endfig;

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
