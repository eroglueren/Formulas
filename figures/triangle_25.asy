// Area of triangle can be calculated with
// semiperimeter and radius of incircle
// let u be remiperimeter of triangle
// let r be radius of incircle
// Area = ur


import geometry;


// Define points for triangle
point A = (0.0, 0.0),
	B = (100.0, 100.0),
	C = (140.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get and draw incircle of triangle
circle inc_maintrig = incircle(maintrig);
draw(inc_maintrig);


// Get a point on incircle and draw radius
point P = point(inc_maintrig, 0);
point O = incenter(maintrig);
draw(O--P, dashed);


// Label segments abd mark points accordingly
label("$a$", B--C, NE);
label("$b$", A--C);
label("$c$", A--B, NW);
label("$r$", O--P);

dot(A);
dot(B);
dot(C);
