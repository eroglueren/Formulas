// Generalized Inner Bisector Theorem states that
// let ABC be a triangle and
// let D be a point in segment BC
// let alpha be angle between BA and AD
// let beta be angle between AD and CA
// then (AB / BD) * sin(alpha) = (AC / DC) * sin(beta)


import geometry;


// Define points for triangle
point A = (80.0, 140.0),
	B = (0.0, 0.0),
	C = (170.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get a point in segment BC
point D = point(maintrig.BC, 0.6);


// Draw AD
draw(A--D);


// Mark points, label segments and angles accordingly
label("$b$", A--B);
label("$c$", A--C, E);
label("$a_1$", B--D);
label("$a_2$", C--D, S);

dot(A);
dot(B);
dot(C);
dot(D);

markangle("$\alpha$", B, A, D);
markangle("$\beta$", D, A, C);

