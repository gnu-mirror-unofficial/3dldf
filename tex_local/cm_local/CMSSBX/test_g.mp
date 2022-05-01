%% test_g.mp
%% Created by Laurence D. Finston (LDF) Sun 01 May 2022 06:51:48 PM CEST

%% Run like this:  mpost '&mfplain' test_g.mp

prologues := 3;
outputtemplate := "%j%3c.eps";

input cmssbx10ldf.mf;
input modes.mf

if ligs>1: font_coding_scheme:="TeX text";
 spanish_shriek=oct"074"; spanish_query=oct"076";
else: font_coding_scheme:=if ligs=0: "TeX typewriter text"
  else: "TeX text without f-ligatures" fi;
 spanish_shriek=oct"016"; spanish_query=oct"017"; fi

%mode=ljfour;
mode=proof; 
%mag := .01; mode=smoke;
mode_setup;
font_setup;

input g.mf;

bye;
