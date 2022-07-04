// Melenaus' Theorem states that
// let ABC be a triangle and
// let P be a point on outside AB
// let Q be a point on on BC
// let X be intersection between PQ and AC
// then (PB / PA) * (AX / XC) * (CQ / QB) = 1


import geometry;


// Define points for triangle
point A = (0.0, 0.0),
	B = (160.0, 0.0),
	C = (80.0, 160.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Define point outside AB line
point P = relpoint(maintrig.AB, 1.7);


// Draw segment between P and B
draw(P--B);


// Define point on BC line
point Q = point(maintrig.BC, 0.3);


// Get in intersection between PQ and AC
point X = intersectionpoint(maintrig.AC, line(P, Q));


// Draw segment between P and X
draw(P--X);


// Label segments and mark points accordingly
label("$a_1$", P--B, S);
label("$a_2$", B--A, S);
label("$b_1$", A--X, W);
label("$b_2$", X--C, W);
label("$c_1$", C--Q, E);
label("$c_2$", Q--B, E);

dot(A);
dot(B);
dot(C);
dot(P);
dot(X);
dot(Q);
