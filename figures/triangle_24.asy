// Area of triangle can be calculated with three
// sides and semiradius of circumcircle
// let ABC be a triangle and
// let R be semiradius of circumcircle
// Area = (a * b * c) / 4R


import geometry;


// Define points for triangle
point A = (60.0, 120.0),
	B = (0.0, 0.0),
	C = (100.0, 20.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get and draw circumcircle
circle circumcircle = circle(maintrig);
draw(circumcircle);


// Get a point on circumcirle and draw semiradius
point P = point(circumcircle, 0);
point O = circumcenter(maintrig);
draw(O--P, dashed);


// Label segments, mark points and angles accordingly
label("$a$", B--C);
label("$b$", A--C, NE);
label("$c$", A--B);
label("$R$", O--P);

dot(A);
dot(B);
dot(C);
