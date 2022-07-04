// Ptolemy's Theorem states that
// let ABCD be a cyclic quadraliteral
// AB * CD + AD * BC = AC * BD (1)
// AC/BD = [AB * AD + BC * CD] / [AB * BC + AD * CD] (2)

import geometry;


// Define and draw circle for quadraliteral
circle mainc = circle(origin, 80.0);
draw(mainc);


// Get points as vertex for quadraliteral and draw vertex
point A = point(mainc, 20.0),
	B = point(mainc, 45.0),
	C = point(mainc, 75.0),
	D = point(mainc, 120.0);

dot(A);
dot(B);
dot(C);
dot(D);


// Define and draw cyclic quadraliteral
path quad = A--B--C--D--cycle;
draw(quad);


// Draw diagonals
draw(A--C);
draw(B--D);


// Label segments and diagonals accordingly
label("$a$", A--B);
label("$b$", B--C);
label("$c$", C--D);
label("$d$", D--A);

label("$e$", A--C);
label("$f$", B--D);
