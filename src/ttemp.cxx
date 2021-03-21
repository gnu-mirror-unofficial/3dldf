/* songlist.cxx  */
/* Created by Laurence D. Finston 10.2017  */

#include <stdlib.h>
#include <stdio.h>

#include <string.h>

#include <sys/types.h>

#include <errno.h>

#include <string>
#include <iomanip>
#include <ios>
#include <iostream>
#include <stdarg.h>
#include <limits.h>
#include <algorithm>
#include <fstream>
#include <iterator>
#include <math.h>
#include <sstream> 
#include <time.h> 
#include <vector> 
#include <map>
#include <cfloat>

/* ** (2) |main| definition  */

using namespace std;

int
main(int argc, char **argv)
{
/* *** (3)   */


  cout.precision(26);
#if 0 
  cout << "FLT_MAX == " << FLT_MAX << endl;

  cout << "FLT_MAX_EXP == " << FLT_MAX_EXP << endl;




  int i = 0;

  float g = f - 1;
#endif 

  float f = FLT_MAX;

  3.402823466385288598117042e+38

  g = 3.402823466385000000000000e+38

    cout << "f == " << f
	 << "g == " << g;
    
  printf("(g < f): %d\n", (g < f));
    
  float g = f;

  stringstream temp_strm;

  string s;

  string int_str;

  string frac_str;

  string exp_str;

  temp_strm.precision(25);
  
  temp_strm << f;
  
  cout << "temp_strm.str() == " << temp_strm.str() << endl;

  int_str = temp_strm.str();

  frac_str = int_str;
  
  int pos;
  
  pos = int_str.find_first_of(".");

  int_str.erase(pos);

  frac_str.erase(0, pos + 1);
  
  exp_str = frac_str;

  pos = frac_str.find_first_of("e");

  frac_str.erase(pos);

  exp_str.erase(0, pos + 2);
  
  cout << "int_str  == " << int_str << endl
       << "frac_str == " << frac_str << endl
       << "exp_str  == " << exp_str << endl;

  float ff;

  s = frac_str;

  int i;

  string temp_str;
  
  for (pos = (s.length() - 1); pos >= 0; pos--)
    {

      printf("pos: %d\n", pos);

      printf("(pos > 0): %d\n", (pos > 0));
      printf("(pos < 0): %d\n", (pos < 0));
      printf("(pos == 0): %d\n", (pos == 0));

      temp_strm.str("");
      
      cout << "frac_str == " << frac_str << endl
	   << "s[" << pos << "] == " << s[pos] << endl;

      temp_str = s[pos];
      
      try
	{
	  i = stoi(temp_str);
	}
      catch (const out_of_range& oor)
	{
	  cerr << "Out of Range error: " << oor.what() << '\n';
	}
      catch (const std::invalid_argument& ia)
	{
	  cerr << "Invalid argument: " << ia.what() << '\n';
	}

    }

  cerr << "Enter <RETURN> to continue: ";
  getchar();       
   



#if 0 
      try
	{
	  ff = stof(temp_str);
	}
      catch (const out_of_range& oor)
	{
	  cerr << "Out of Range error: " << oor.what() << '\n';
	}
      catch (const std::invalid_argument& ia)
	{
	  cerr << "Invalid argument: " << ia.what() << '\n';
	}

      cout << "ff  == " << ff << endl;
#endif 


#if 0 
  cout << "g == " << g << endl;

  cout << "g < f is " << (g < f) << endl;

#endif 

  
  
   

}  /* End of |main| definition  */


/* Local Variables:  */
/* mode:C            */
/* mode:show-paren   */
/* abbrev-mode:t     */
/* End:              */

