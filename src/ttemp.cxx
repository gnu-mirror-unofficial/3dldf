/* ttemp.cxx  */
/* Created by Laurence D. Finston Sun 21 Mar 2021 05:00:23 PM CET  */

#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <limits.h>
#include <math.h>
#include <string.h>

#include <sys/types.h>

#include <algorithm>
#include <bitset>
#include <exception>
#include <float.h>
#include <iomanip>
#include <ios>
#include <iostream>
#include <iterator>
#include <limits>
#include <new>
#include <sstream>
#include <stdexcept>
#include <streambuf>
#include <string>
#include <valarray>
#include <vector>
#include <fstream>

using namespace std;

int
main(void)
{

   double d = 2.2530540240150998e-06;

   cerr << "d == " << d << endl;

   float f = 1e-05;

   cerr << "f == " << f << endl;

   cerr << "(d < f) == " << (d < f) << endl;

 
   return 0;

}



/* Local Variables:  */
/* mode:CWEB         */
/* mode:show-paren   */
/* abbrev-mode:t     */
/* End:              */

