// Von Aubel's Second Theorem states that
// let ABC be a triangle and
// let P be a point inside ABC
// let X be intersection between AP and BC
// let Y be intersection between BP and CA
// let Z be intersection between CP and AB
// then (AP / AX) + (BP / BY) + (CP / CZ) = 2
// and (XP / AX) + (YP / BY) + (ZP / CZ) = 1


import geometry;


// Define points for triangle
point A = (80.0, 140.0),
	B = (0.0, 0.0),
	C = (160.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Define point inside maintrig
point P = (70.0, 50.0);


// Get intersections
point X = intersectionpoint(maintrig.BC, line(A, P));
point Y = intersectionpoint(maintrig.AC, line(B, P));
point Z = intersectionpoint(maintrig.AB, line(C, P));


// Draw segments from intersections.
draw(A--X);
draw(B--Y);
draw(C--Z);


// Label segments and mark points accordingly
label("$x_1$", A--P, E);
label("$x_2$", P--X, E);
label("$y_1$", B--P);
label("$y_2$", P--Y);
label("$z_1$", C--P);
label("$z_2$", P--Z);

dot(A);
dot(B);
dot(C);
dot(P);
dot(X);
dot(Y);
dot(Z);
