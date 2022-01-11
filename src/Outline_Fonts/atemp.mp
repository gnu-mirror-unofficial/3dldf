%% atemp.mp
%% Created by Laurence D. Finston (LDF) Fri 24 Dec 2021 07:01:37 AM CET

tracingonline := 1;
prologues := 3;
outputtemplate := "%j%3c.eps";

picture w[];

beginfig(0);

  fontmapline "cmssbx10 CMSSBX10 <cmssbx10.pfb";
  w0 := glyph 65 of "cmssbx10";

  for item within w0:
    show pathpart item;
  endfor;
  
endfig;

end;



      
%% For use in indirect buffers:
%% (metapost-mode)

%% Local Variables:
%% mode:MetaPost
%% eval:(outline-minor-mode t)
%% outline-regexp:"%% *\\*+\\|@\\*[0-9]*"
%% End:
