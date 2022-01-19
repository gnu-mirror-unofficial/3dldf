tracingonline :=1;
path q;

q = (0cm, 0cm) .. controls (-0.396881, -1.13771) and (-1.16417, -1.13771) ..
(-1.69334cm, -1.13771cm) .. controls (-1.69334, -1.13771) and (-4.02167, -1.13771) ..
(-4.02167cm, -1.13771cm) .. controls (-4.55084, -1.13771) and (-5.31813, -1.13771) ..
(-5.71501cm, 0cm) .. controls (-5.71501, 0) and (-11.2977, 15.9808) ..
(-11.2977cm, 15.9808cm) .. controls (-11.43, 16.3248) and (-11.43, 16.3777) ..
(-11.43cm, 16.51cm) .. controls (-11.43, 17.2244) and (-10.7685, 17.2244) ..
(-10.3981cm, 17.2244cm) .. controls (-10.3981, 17.2244) and (-9.44563, 17.2244) ..
(-9.44563cm, 17.2244cm) .. controls (-8.96938, 17.2244) and (-8.14917, 17.2244) ..
(-7.77876cm, 16.166cm) .. controls (-7.77876, 16.166) and (-6.74688, 13.2292) ..
(-6.74688cm, 13.2292cm) .. controls (-6.74688, 13.2292) and (0.582077, 13.2292) ..
(0.582077cm, 13.2292cm) .. controls (0.582077, 13.2292) and (1.48166, 15.7692) ..
(1.48166cm, 15.7692cm) .. controls (1.79916, 16.6952) and (1.98437, 17.2244) ..
(3.25437cm, 17.2244cm) .. controls (3.25437, 17.2244) and (4.68312, 17.2244) ..
(4.68312cm, 17.2244cm) .. controls (5.05354, 17.2244) and (5.71499, 17.2244) ..
(5.71499cm, 16.51cm) .. controls (5.71499, 16.3777) and (5.71499, 16.3248) ..
(5.5827cm, 15.9808cm) .. controls (5.5827, 15.9808) and (0, 0) .. cycle;

show q;

path r;

message "length q:"; 
show length q;

n = (length q) / 50;

show n;

r = point 0 of q;

pair m;

for i = n step n until length q:
  m := point i of q;
  r := r .. m;
endfor;

r := r .. cycle;


show r;

message "length r:"; 
show length r;

end;
