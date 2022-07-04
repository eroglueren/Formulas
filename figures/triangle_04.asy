// Von Aubel's First Theorem states that
// let ABC be a triangle and
// let P be a point inside ABC
// let X be intersection between AP and BC
// let Y be intersection between BP and CA
// let Z be intersection between CP and AB
// then (AP / PX) = (AZ / ZB) + (AY / YC)


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
label("$a_1$", A--Z);
label("$a_2$", Z--B);
label("$b_1$", A--Y, E);
label("$b_2$", Y--C, E);
label("$x_1$", A--P);
label("$x_2$", P--X);

dot(A);
dot(B);
dot(C);
dot(P);
dot(X);
dot(Y);
dot(Z);
