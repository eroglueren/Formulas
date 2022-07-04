// Inner Bisector Theorem states that
// let ABC be a triangle and
// let D be a point intersecting bisector of A and segment BC
// AD^2 = AB * BC - BD * DC and
// AB / BD = AC / DC


import geometry;


// Define points for triangle
point A = (80.0, 140.0),
	B = (0.0, 0.0),
	C = (170.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get bisectors intersection on BC line
point D = bisectorpoint(maintrig.BC);


// Draw bisector
draw(A--D);


// Label segments, mark points and angles accordingly
label("$n_a$", A--D);
label("$b$", A--B);
label("$c$", A--C, E);
label("$a_1$", B--D);
label("$a_2$", C--D, S);

dot(A);
dot(B);
dot(C);
dot(D);

markangle(B, A, C, StickIntervalMarker(2, 2));
