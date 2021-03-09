%%%% out.mp
%%%% Generated Thu Mar  6 16:01:05 2014 by `sudoku'.

pickup pensquare scaled 1pt;
path q;
pair p[];

p0 = (1cm, -1cm);



transform t[];



verbatimtex \font\large=cmr12 scaled \magstep3 
            \font\small=cmr12 etex

beginfig(1);

q := (0, 0) -- (6cm, 0) -- (6cm, -6cm) -- (0, -6cm) -- cycle;

draw q withcolor (.5, .5, .5) withpen pensquare scaled 2pt;

draw q shifted (12cm, 0) withcolor (.5, .5, .5) withpen pensquare scaled 2pt;

draw q shifted (6cm, -6cm) withcolor (.5, .5, .5) withpen pensquare scaled 2pt;

draw q shifted (0cm, -12cm) withcolor (.5, .5, .5) withpen pensquare scaled 2pt;

draw q shifted (12cm, -12cm) withcolor (.5, .5, .5) withpen pensquare scaled 2pt;

for i = 0 downto -9:

   draw (0, 2i*cm) -- (18cm, 2i*cm);

   draw (-2i*cm, 0) -- (-2i*cm, -18cm);

endfor;



label.top(btex \vbox{\hbox{\small 1 2 3 4}\hbox{{\small 5 6 7 8 9}}} etex, p0);


endinput

