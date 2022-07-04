// Area of triangle can be calculated with three
// medians let
// let ABC be a triangle and
// let V_a, V_b, V_c
// Area = 4/3 (a * b * c)


import geometry;


// Define points for triangle
point A = (100.0, 100.0),
	B = (0.0, 0.0),
	C = (140.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Get mid points
point pmida = midpoint(maintrig.BC);
point pmidb = midpoint(maintrig.AC);
point pmidc = midpoint(maintrig.AB);


// Draw medians
draw(A--pmida);
draw(B--pmidb);
draw(C--pmidc);


// Label segments and mark points accordingly
label("$V_a$", A--pmida);
label("$V_b$", B--pmidb);
label("$V_c$", C--pmidc);

dot(A);
dot(B);
dot(C);
