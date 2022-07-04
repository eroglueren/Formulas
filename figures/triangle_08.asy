// Law of Sines states that
// let ABC be a triangle and
// let R be semiradius of circumcircle
// AB / sinC = AC / sinB = BC / sinA = 2R


import geometry;


// Define points for triangle
point A = (80.0, 140.0),
	B = (0.0, 0.0),
	C = (140.0, 20.0);


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

markangle("$\hat{A}$", B, A, C, radius=8);
markangle("$\hat{B}$", C, B, A, radius=8);
markangle("$\hat{C}$", A, C, B, radius=8);
