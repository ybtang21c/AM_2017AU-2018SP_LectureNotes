import graph;
texpreamble("\usepackage{amsmath,amsfonts,amssymb,amsthm,bm}");

size(100,10); 
unitsize(5pt,50pt);

int n=40; 

//defaultpen(linewidth(1)+fontsize(10));
//defaultpen(fontsize(8)); 

pair P(int i){return (i+1,(1+1/(i+1))^(i+1));}

pair[] star=sequence(P,n);

dot(star,red);

label("\small$(1,2)$",(1,2),SE);

label("$e=2.71828...$",(0,2.718),NE);

//label("\large$\left(1+\frac 1n\right)^n\to e\,(n\to\infty)$",(20,1.42));

label("\large$e=\mathrm{sup}\left\{\left(1+\frac 1n\right)^n|n\in\mathbb{N}\right\}
\notin\mathbb{Q}$",(20,1.42));

draw((0,2.718)--(n,2.718),dashed);

draw((-2,0)--(n+1,0),Arrow);
draw((0,-0.2)--(0,3),Arrow);

label("$O$",(0,0),SW);
label("$x$",(n+1,0),S);
label("$y$",(0,3),W);
