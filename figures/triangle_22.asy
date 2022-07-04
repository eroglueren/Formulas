// Area of the triangle is defined by
// Area = 1/2 * h * a (h as altitude and a as base)


import geometry;


// Define points for triangle
point A = (75.0, 100.0),
	B = (0.0, 0.0),
	C = (110.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get and draw altitude
point altitude_point = projection(maintrig.BC) * maintrig.A;
draw(A--altitude_point);


// Label segments, mark angles and points accordingly
label("$a$", B--C);
label("$h$", A--altitude_point);

dot(A);
dot(B);
dot(C);

markrightangle(maintrig.C, altitude_point, A, size=6);
