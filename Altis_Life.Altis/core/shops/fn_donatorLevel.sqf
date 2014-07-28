#include <macro.h>
/*
Author: CDawg
*/

switch (__GETC__(life_donator)) do {
	case  0: { donatorLevel = 100; };
	case  1: { donatorLevel = 90; };
	case  2: { donatorLevel = 85; };
	case  3: { donatorLevel = 80; };
	case  4: { donatorLevel = 75; };
	case  5: { donatorLevel = 70; };
};

donatorLevel

