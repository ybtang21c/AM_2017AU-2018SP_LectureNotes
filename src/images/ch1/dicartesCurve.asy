import graph;
import contour;
size(200);
real a=1;real f(pair t){real x=t.x;real y=t.y;return x^3+y^3-3a*x*y;}guide[][] g=contour(f,(-3,-3),(3,3),new real[]{0},100);
draw(g,red+linewidth(1));

draw((-3,2)--(2,-3),dashed);
draw((-3,0)--(3,0),Arrow);
draw((0,-3)--(0,3),Arrow);
label("$x$",(3,0),S);
label("$y$",(0,3),W);
label("$O$",(0,0),SW);
label("$-a$",(-a,0),SW);
label("$-a$",(0,-a),SW);