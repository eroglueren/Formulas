// Ceva's First Theorem states that
// let ABC be a triangle and
// let P be a point inside ABC
// let X be intersection between AP and BC
// let Y be intersection between BP and CA
// let Z be intersection between CP and AB
// then (AZ / ZB) * (BX / XC) * (CY/YA) = 1


import geometry;


// Define points for triangle
point A = (80.0, 140.0),
	B = (0.0, 0.0),
	C = (160.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Define point inside maintrig
point P = (60.0, 50.0);


// Get intersections
point X = intersectionpoint(maintrig.BC, line(A, P));
point Y = intersectionpoint(maintrig.AC, line(B, P));
point Z = intersectionpoint(maintrig.AB, line(C, P));


// Draw segments from intersections.
draw(A--X);
draw(B--Y);
draw(C--Z);


// Label segments and mark points accordingly
label("$a_1$", A--Z, NW);
label("$a_2$", Z--B, NW);
label("$b_1$", B--X, S);
label("$b_2$", X--C, S);
label("$c_1$", C--Y, E);
label("$c_2$", Y--A, E);

dot(A);
dot(B);
dot(C);
dot(X);
dot(Y);
dot(Z);
