// Euclid's Theorem states that
// let ABC be a perpendicular triangle
// let C be right angle
// let a be BC and b be AC sides
// let D be intersection of AB and
// line going thorough C and perpendicular to AB
// let p be AD and k be DB
// let h be CD
// then
// h^2 = pk
// a^2 = k (k + p)
// b^2 = p (p + k)
// 1/h^2 = 1/a^2 + 1/b^2
// h (p + k) = a b


import geometry;


// Define points for triangle
point A = (0, 100.0),
	B = (140.0, 0.0),
	C = (0.0, 0.0);


// Define and draw main triangle
triangle maintrig = triangle(A, B, C);
draw(maintrig);


// Define and draw orthagonal line
point D = intersectionpoint(maintrig.AB, perpendicular(C, maintrig.AB));
draw(C--D);


// Label segments, mark angles and points accordingly
label("$a$", B--C, S);
label("$b$", A--C);
label("$p$", A--D, NE);
label("$k$", D--B, NE);
label("$h$", C--D);

dot(A);
dot(B);
dot(C);

markrightangle(A, C, B, size=6);
markrightangle(C, D, B, size=6);

