// Median Theorem states that
// let ABC be a triangle and
// a, b and c be sides of the triangle
// let V_a be madian of a
// then 2 * V_a = b^2 + c^2 - (a^2)/2


import geometry;


// Define points for triangle
point A = (100.0, 100.0),
	B = (0.0, 0.0),
	C = (140.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get mid point of a
point pmid = midpoint(maintrig.BC);


// Draw median
draw(A--pmid);


// Label segments, mark points and segments accordingly
label("$a$", B--C, S);
label("$b$", A--C, E);
label("$c$", A--B);
label("$V_a$", A--pmid, W);

dot(A);
dot(B);
dot(C);
dot(pmid);

draw(B--C, StickIntervalMarker(2, 2, size=6));
