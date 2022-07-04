// Thales' Third Theorem states that
// let AB, CD and EF parallel lines
// let K, L, M be colinear points from AB, CD and EF
// let P, N, R be colinear points from AB, CD and EF
// then KL / KL = PN / NR


import geometry;


// Definethree points
point T = (70.0, 120.0),
	E = (0.0, 0.0),
	F = (200.0, 0.0);


// Define and draw parallel lines
transform scalar1 = scale(0.4, T);
transform scalar2 = scale(0.7, T);

point A = scalar1 * E;
point B = scalar2 * E;
point C = scalar1 * F;
point D = scalar2 * F;

draw(A--C, Arrow(TeXHead, Relative(0.5)));
draw(B--D, Arrow(TeXHead, Relative(0.5)));
draw(E--F, Arrow(TeXHead, Relative(0.5)));


// Draw intersecting lines
draw(shift(5.0, -5.0) * scale(1.2) * (A--E) );
draw(shift(-45.0, -5.0) * scale(1.2) * (C--F) );


// Label segments and mark points accordingly
label("$a$", A--B, NW);
label("$b$", B--E, NW);
label("$c$", C--D, NE);
label("$d$", D--F, NE);
