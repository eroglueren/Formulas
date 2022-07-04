// Law of Coines states that
// let ABC be a triangle and
// a^2 = b^2 + c^2 -2bc*cosA


import geometry;


// Define points for triangle
point A = (0.0, 0.0),
	B = (100.0, 100.0),
	C = (140.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Label segments, mark points and angles accordingly
label("$a$", B--C, NE);
label("$b$", A--C);
label("$c$", A--B, NW);

dot(A);
dot(B);
dot(C);

markangle("$\hat{A}$", C, A, B, radius=8);
