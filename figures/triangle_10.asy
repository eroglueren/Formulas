// Heron's Theorem states that
// let ABC be a triangle and
// a, b and c be sides of the triangle
// let u be semiperimeter of triangle then
// Area = sqrt(u * (u - a) * (u - b) * (u - c))


import geometry;


// Define points for triangle
point A = (0.0, 0.0),
	B = (100.0, 100.0),
	C = (140.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Label segments abd mark points accordingly
label("$a$", B--C, NE);
label("$b$", A--C);
label("$c$", A--B, NW);

dot(A);
dot(B);
dot(C);
