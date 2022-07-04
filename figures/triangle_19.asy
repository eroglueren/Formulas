// Thales' First Theorem states that
// let ABC be a triangle
// let D be a point on AB
// let DE be a parallel line to BC inside triangle ABC
// then AD / DB = AE / EC
// and AD / AB = AE / AC = DE / BC


import geometry;


// Define points for triangle
point A = (50.0, 120.0),
	B = (0.0, 0.0),
	C = (150.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Define point on AB and AC
transform scalar = scale(0.7, A);
point D = scalar * B;
point E = scalar * C;


// Draw parallel lines
draw(D--E, Arrow(TeXHead, Relative(0.5)));
draw(B--C, Arrow(TeXHead, Relative(0.5)));


// Label segments and mark points accordingly
label("$a$", A--D);
label("$b$", D--B);
label("$c$", A--E, NE);
label("$d$", E--C, NE);
label("$e$", D--E);
label("$f$", B--C);

dot(A);
dot(B);
dot(C);
dot(D);
dot(E);
