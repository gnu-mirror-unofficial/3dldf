%% atemp.mp
%% Created by Laurence D. Finston (LDF) Wed 24 Nov 2021 08:02:39 AM CET

verbatimtex \font\huge=cmr17 scaled 8000 etex;

prologues := 3;
beginfig(1);
point p[];
path q[];

p0 = origin;
p1 = (0cm, 10cm);
p2 = (10cm, 10cm);
p3 = (0cm, 10cm);

q0 = p0 .. p1 .. p2 .. p3 .. cycle;

draw q0 withpen pencircle scaled (.5pt, .5pt);

%label(btex {\huge ABC abc} etex, origin);
endfig;

end;