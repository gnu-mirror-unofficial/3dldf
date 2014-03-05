%%%% out_samp.tex
%%%% Created by Laurence D. Finston (LDF) Wed Mar  5 17:16:41 CET 2014

%%%% * Copyright and License.

%%%% This file is part of GNU 3DLDF, a package for three-dimensional drawing. 
%%%% Copyright (C) 2014 The Free Software Foundation                          

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

%%%% (``@@'' stands for a single at-sign in the following paragraph.) 

%%%% Please send bug reports to Laurence.Finston@@gmx.de 
%%%% The mailing list help-3dldf@@gnu.org is available for people to 
%%%% ask other users for help.  
%%%% The mailing list info-3dldf@@gnu.org is for sending 
%%%% announcements to users. To subscribe to these mailing lists, send an 
%%%% email with ``subscribe <email-address>'' as the subject.  

%%%% The author can be contacted at: 

%%%% Laurence D. Finston 
%%%% Kreuzbergring 41 
%%%% D-37075 Goettingen 
%%%% Germany 

%%%% Laurence.Finston@@gmx.de (@@ stands for a single ``at'' sign.)

pickup pensquare scaled 1pt;

path q;

verbatimtex \font\large=cmr12 scaled \magstep3 etex

beginfig(1);

q := (0, 0) -- (3cm, 0) -- (3cm, -3cm) -- (0, -3cm) -- cycle;


draw q withcolor (.5, .5, .5) withpen pensquare scaled 2pt; 

draw q shifted (6cm, 0) withcolor (.5, .5, .5) withpen pensquare scaled 2pt; 

draw q shifted (3cm, -3cm) withcolor (.5, .5, .5) withpen pensquare scaled 2pt; 

draw q shifted (0cm, -6cm) withcolor (.5, .5, .5) withpen pensquare scaled 2pt; 

draw q shifted (6cm, -6cm) withcolor (.5, .5, .5) withpen pensquare scaled 2pt; 


for i = 0 downto -9:
   draw (0, i*cm) -- (9cm, i*cm);  
   draw (-i*cm, 0) -- (-i*cm, -9cm);  
endfor;

pair p[];

p0 = (.5cm, -.5cm);

label(btex {\large 5} etex, p0);

transform t[];

t0 = identity shifted (1cm, 0cm);

p0 := p0 transformed t0;


label(btex {\large 8} etex, p0);



endfig;

end;


%% Local Variables: 
%% mode:plain-Tex 
%% abbrev-mode:t 
%% eval:(outline-minor-mode t) 
%% eval:(font-lock-mode nil) 
%% End: 
