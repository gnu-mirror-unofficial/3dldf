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
   cerr << "Entering ttemp." << endl;

   char str[] = "-1.2019101008992986e-13";

   errno = 0;
   double d = strtod(str, 0);

   cerr << "d == " << d << endl;

   double e;

   stringstream temp_strm;

   temp_strm << str;

   temp_strm >> e;

   cerr << "e == " << fixed << e << endl;
 
   return 0;

}



/* Local Variables:  */
/* mode:CWEB         */
/* mode:show-paren   */
/* abbrev-mode:t     */
/* End:              */

