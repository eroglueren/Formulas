// Fundamental Theorem of Similarity states that
// let ABC and DEF be similar triangles (a.k.a have same angles)
// let angle A = angle D
// let angle B = angle E
// let angle C = angle F
// then A / D = B / E = C / F = k
// Area(ABC) / Area(DEF) = k^2


import geometry;


// Define points for triangle
point A = (0.0, 0.0),
	B = (100.0, 0.0),
	C = (70.0, 100.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Define and draw helper triangle
transform shifter = shift(150.0 , 0.0);
triangle helpertrig = shifter * maintrig;
point D = helpertrig.A;
point E = helpertrig.B;
point F = helpertrig.C;
draw(helpertrig);


// Label segments, mark angles and points accordingly
label("$a$", B--C);
label("$b$", A--C, NW);
label("$c$", A--B);
label("$d$", E--F);
label("$e$", D--F, NW);
label("$f$", D--E);

dot(A);
dot(B);
dot(C);
dot(D);
dot(E);
dot(F);

markangle("$\alpha$", B, A, C, radius=6);
markangle("$\beta$", C, B, A, radius=6);
markangle("$\theta$", A, C, B, radius=6);
markangle("$\alpha$", E, D, F, radius=6);
markangle("$\beta$", F, E, D, radius=6);
markangle("$\theta$", D, F, E, radius=6);
