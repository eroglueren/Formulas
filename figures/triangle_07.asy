// Carnots Theorem states that
// let ABC be a triangle and
// let P be a point inside ABC
// let X be intersection of BC's normal passing through P and BC
// let Y be intersection of BP's normal passing through P and BP
// let Z be intersection of AB's normal passing through P and AB
// then AZ^2 + BX^2 + CY^2 = ZB^2 + XC^2 + YA^2


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
point X = intersectionpoint(maintrig.BC, perpendicular(P, maintrig.BC));
point Y = intersectionpoint(maintrig.AC, perpendicular(P, maintrig.AC));
point Z = intersectionpoint(maintrig.AB, perpendicular(P, maintrig.AB));


// Draw segments from intersections.
draw(P--X);
draw(P--Y);
draw(P--Z);


// Label segments, mark points and angles accordingly
label("$a_1$", A--Z);
label("$a_2$", Z--B);
label("$b_1$", B--X);
label("$b_2$", X--C);
label("$c_1$", C--Y);
label("$c_2$", Y--A);

dot(A);
dot(B);
dot(C);
dot(X);
dot(Y);
dot(Z);

markrightangle(P, Z, A, size=4);
markrightangle(P, X, B, size=4);
markrightangle(P, Y, C, size=4);
