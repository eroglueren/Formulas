// Generelized Exterior Bisector Theorem states that
// let ABC be a triangle and
// let D be a point outside AB
// let E be a point outside BC
// let alpha be angle between EA and AD
// let beta be angle between EA and AC
// then EC / EB = AC / AB


import geometry;


// Define points for triangle
point A = (100.0, 90.0),
	B = (0.0, 0.0),
	C = (100.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get a point in segment AB
point D = relpoint(maintrig.BA, 1.5);


// Get a point in segment BC
point E = relpoint(maintrig.BC, 2.4);


// Draw segmets connecting E and D
draw(A--D);
draw(A--E);
draw(C--E);


// Label segments, mark points and angles accordingly
label("$b$", A--C);
label("$c$", A--B);
label("$k$", B--C);
label("$p$", C--E);

dot(A);
dot(B);
dot(C);
dot(E);

markangle("$\alpha$", E, A, D, radius=8);
markangle("$\beta$", C, A, E, radius=8);
