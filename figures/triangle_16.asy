// Pythagorean Theorem states that
// let ABC be a perpendicular triangle
// let a and b perpendicular sides
// let c hypotenuse then
// a^2 + b^2 = c^2


import geometry;


// Define points for triangle
point A = (0, 100.0),
	B = (140.0, 0.0),
	C = (0.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Label segments, mark angles and points accordingly
label("$a$", B--C, S);
label("$b$", A--C);
label("$c$", A--B, NE);

dot(A);
dot(B);
dot(C);

markrightangle(A, C, B, size=6);

