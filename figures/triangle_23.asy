// Area of triangle can be calculated with two sides and angle between
// let ABC be a triangle
// Area = (1/2) * a * b * sinC


import geometry;


// Define points for triangle
point A = (0.0, 0.0),
	B = (80.0, 80.0),
	C = (100.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Label segments, mark points and angles accordingly
label("$a$", A--B, NW);
label("$b$", A--C);

dot(A);
dot(B);
dot(C);

markangle("$\alpha$", C, A, B, radius=8);
