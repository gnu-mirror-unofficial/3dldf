%% 3DLDF_resolve_top.mp
%% Created by Laurence D. Finston (LDF) Thu 21 Apr 2022 05:58:36 PM CEST

boolean extern;

string output_filename;
input TEX;

prologues := 3;
outputtemplate := "%j%3c.eps";
input writemcs.mp;

numeric begin_val;
numeric end_val;
numeric res_val;
numeric j;
numeric k;
numeric n;

pen small_pen;
pen medium_pen;
pen big_pen;

small_pen = pencircle scaled 1pt;
medium_pen = pencircle scaled 2pt;
big_pen = pencircle scaled 3pt;

pair p[][];
path Q[];
pair r[];

string date_str;


  



endinput;


