// Exterior Bisector Theorem states that
// let ABC be a triangle and
// let E be intersection point of
// exterior angle bisector of A and BC
// then EC / EB = AC / AB
// and AE^2 = EC * EB - AC * AB


import geometry;


// Define points for triangle
point A = (100.0, 90.0),
	B = (0.0, 0.0),
	C = (100.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get a point in segment AB for exterior angle
point D = relpoint(maintrig.BA, 1.5);


// Get exterior angle bisector and point E
line oabisector = bisector(line(A, true, D, true), line(A, true, C, true), sharp=false);
point E = intersectionpoint(oabisector, line(B, true, C, true));


// Draw exterior angle bisector
draw(A--E);
draw(A--D);
draw(C--E);


// Label segments, mark points and angles accordingly
label("$b$", A--C);
label("$c$", A--B);
label("$k$", B--C);
label("$p$", C--E);
label("$n_a$", A--E);

dot(A);
dot(B);
dot(C);
dot(E);

markangle(C, A, D, StickIntervalMarker(2, 2, size=8), radius=14);
