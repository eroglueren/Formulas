// Ceva's Second Theorem states that
// let ABC be a triangle and
// let P be a point inside ABC
// let X be intersection between AP and BC
// let Y be intersection between BP and CA
// let Z be intersection between CP and AB
// then
// (sin(XAC) / sin(BAX)) * (sin(YBA) / sin(CBY)) * (sin(ZCB / sin(ACZ)) = 1


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


// Mark angles and points accordingly
dot(A);
dot(B);
dot(C);
dot(X);
dot(Y);
dot(Z);

markangle("$\alpha_1$", X, A, C);
markangle("$\alpha_2$", B, A, X);
markangle("$\beta_1$", Y, B, A);
markangle("$\beta_2$", C, B, Y);
markangle("$\theta_1$", Z, C, B);
markangle("$\theta_2$", A, C, Z);
