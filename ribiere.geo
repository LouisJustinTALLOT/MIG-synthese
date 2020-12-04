// Géométrie du site de La Ribière
// Mini-projet 1 - hydrogéologie

// précision du mailllage
dx = 5;
dxx = 2;
dxxx = 2;

// 4 zones
zone_granite_dur = 1001;
zone_granite_fracture = 1002;
zone_steriles = 1003;
zone_residus_sable =  1004;
zone_residus_boues = 1005;

// les conditions aux limites
CL_g = 2001;
CL_d = 2002;
CL_h = 2003;

// les points
Point(1) = {0, 300, 0, 10};
Point(4) = {430, 300, 0, 10};
Point(6) = {36, 392, 0, dxx};
Point(7) = {91, 379, 0, dxx};
Point(8) = {109, 376, 0, dxx};
Point(9) = {206, 367, 0, dxx};
Point(11) = {286, 356, 0, dxx};
Point(12) = {327, 356, 0, dxx};
Point(13) = {390, 351, 0, dxx};
Point(14) = {46, 390, 0, dx};
Point(15) = {121, 375, 0, dx};
Point(16) = {0, 395, 0, dxx};
Point(17) = {430, 350, 0, dxx};
Point(18) = {0, 395, 0, dx};
Point(19) = {46, 358, 0, 3};
// Point(20) = {121, 358, 0, dx};
Point(21) = {121, 375, 0, dx};
Point(22) = {36, 388, 0, dx};
Point(23) = {46, 386, 0, dxx};
Point(24) = {91, 375, 0, dxx};
Point(25) = {109, 376, 0, dx};
Point(26) = {109, 372, 0, dxx};
Point(27) = {206, 363, 0, dxx};
Point(28) = {286, 352, 0, dx};
Point(29) = {327, 352, 0, dx};
Point(30) = {390, 347, 0, dxx};
Point(31) = {430, 346, 0, dx};
Point(32) = {121, 371, 0, dxx};
Point(33) = {0, 391, 0, dx};
Point(34) = {91, 350, 0, dx};
// Point(35) = {91, 358, 0, 4};
Point(39) = {430, 341, 0, dx};
Point(40) = {430, 337, 0, dx};
Point(41) = {270, 337, 0, dx};
Point(42) = {199, 338, 0, dx};
Point(43) = {36, 358, 0, dx};
Point(44) = {46, 352, 0, dxxx};
Point(45) = {46, 373, 0, dx};
Point(46) = {91, 367, 0, dxx};
Point(47) = {109, 366, 0, dx};
Point(48) = {121, 365, 0, dx};
Point(49) = {46, 362, 0, 1.0};
Point(50) = {53, 358, 0, 1.0};
Point(51) = {53, 362, 0, 1.0};
Point(52) = {121, 362, 0, 1.0};
Point(53) = {115, 358, 0, 1.0};
Point(54) = {115, 362, 0, 1.0};

// Les lignes
Line(1) = {1, 33};
Line(2) = {33, 16};
Line(3) = {16, 6};
Line(4) = {6, 14};
Line(5) = {14, 7};
Line(6) = {7, 8};
Line(7) = {8, 15};
Line(8) = {15, 9};
Line(9) = {9, 11};
Line(10) = {11, 12};
Line(11) = {12, 13};
Line(12) = {13, 17};
Line(13) = {17, 31};
Line(14) = {31, 39};
Line(15) = {39, 40};
Line(16) = {40, 4};
Line(17) = {4, 1};
Line(18) = {33, 22};
Line(19) = {22, 23};
Line(23) = {32, 26};
Line(24) = {26, 24};
Line(25) = {24, 23};
Line(26) = {32, 27};
Line(27) = {27, 28};
Line(28) = {28, 29};
Line(29) = {29, 30};
Line(30) = {30, 31};
// Line(31) = {19, 35};
// Line(32) = {35, 20};
Line(34) = {34, 42};
Line(35) = {42, 41};
Line(36) = {41, 40};
Line(38) = {22, 43};
Line(39) = {44, 34};
Line(40) = {45, 46};
Line(41) = {46, 47};
Line(42) = {47, 48};
Line(43) = {23, 45};
// Line(45) = {45, 19};
Line(46) = {32, 48};
// Line(47) = {48, 20};
Line(48) = {49, 45};
Line(49) = {48, 52};
Line(50) = {53, 50};
Ellipse(37) = {43, 19, 19, 44};
Ellipse(51) = {49, 51, 51, 50};
Ellipse(52) = {52, 54, 54, 53};



// les surfaces

Line Loop(48) = {37, 39, 34, 35, 36, 16, 17, 1, 18, 38};
Plane Surface(1) = {48};
Physical Surface(zone_granite_dur) = {1};

Line Loop(49) = {35, 36, -15, -14, -30, -29, -28, -27, -26, 46, 49, 52, 50, -51, 48, -43, -19, 38, 37, 39, 34};
Plane Surface(2) = {49};
Physical Surface(zone_granite_fracture) = {2};

Line Loop(50) = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, -30, -29, -28, -27, -26, 23, 24, 25, -19, -18, 2};
Plane Surface(5) = {50};
Physical Surface(zone_steriles) = {5};

Line Loop(51) = {40, 41, 42, 49, 52, 50, -51, 48};
Plane Surface(3) = {51};
Physical Surface(zone_residus_boues) = {3};

Line Loop(52) = {43, 40, 41, 42, -46, 23, 24, 25};
Plane Surface(4) = {52};
Physical Surface(zone_residus_sable) = {4};

// les limites

Physical Line(CL_g) = {1, 2};
Physical Line(CL_d) = {16, 14, 15, 13};
// Physical Line(CL_h) = {11, 12, 10, 9, 8, 6, 7, 5, 4, 3};
Physical Line(CL_h) = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12};


