// Stewart's Theorem states that
// let ABC be a triangle and
// let D be a point [BC]
// AD^2 = ( [ (AB ^ 2) * CD + (AC ^ 2) * BD ] / BC ) - BD * CD


import geometry;


// Define points for triangle
point A = (80.0, 140.0),
	B = (0.0, 0.0),
	C = (160.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Define point on BC line
point D = point(maintrig.BC, 0.7);


// Draw segment between A and D
draw(A--D);


// Label segments and mark points accordingly
label("$x$",A--D);
label("$b$",A--B);
label("$c$",A--C, E);
label("$m$",B--D);
label("$n$",C--D, S);

dot(A);
dot(B);
dot(C);
dot(D);
