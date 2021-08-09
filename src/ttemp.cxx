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

typedef unsigned int i_type;

int
main(void)
{
   cerr << "Entering ttemp." << endl;

   FILE *fp;
   FILE *fp_1;

   string s;

   ofstream out_file;

   out_file.open("sample_5_star_info_alpha_temp.tex");

   char buffer[256];
   memset(buffer, 0, 256);

   char buffer_1[256];
   memset(buffer_1, 0, 256);

   size_t size;
   size_t size_1;

   fp = popen("cat sample_5_star_info_combined.tex | cut -d{ -f4 | tr -d \"}\"", "r");
   fp_1 = popen("cat sample_5_star_info_combined.tex", "r");

   if (fp == 0 || fp_1 == 0)
      cerr << "`popen' failed, returning NULL." << endl;
   else    
      cerr << "`popen' succeeded, returning non-NULL." << endl;

   do 
   {
       fgets(buffer, 256, fp);
       fgets(buffer_1, 256, fp_1);

#if 0 
       cerr << "strlen(buffer)   == " << strlen(buffer) << endl
            << "strlen(buffer_1) == " << strlen(buffer_1) << endl;
#endif 

       if (strlen(buffer) > 0)
          cerr << "buffer:" << endl << buffer;
       if (strlen(buffer_1) > 0)
          cerr << "buffer_1:" << endl << buffer_1;

       s   = buffer;

       do 
       {

          size = s.find_first_of("\\${}\n");
          if (size != string::npos)
             s.erase(size, 1);          

          size_1 = s.find("^");
          if (size_1 != string::npos)
             s.replace(size_1, 1, " ");          

       } while (!(size == string::npos && size_1 == string::npos));

       for (int i = 0; i < s.length(); ++i)
          s[i] = tolower(s[i]);

       cerr << "s == " << s << endl;

       out_file << "{" << s << "}" << buffer_1;

   }
   while (strlen(buffer) > 0 && strlen(buffer_1) > 0 && !feof(fp) && !feof(fp_1));

   pclose(fp);
   pclose(fp_1);

   fp   = 0;
   fp_1 = 0;
   out_file.close();

   cerr << "Exiting ttemp successfully with return value 0." << endl;

   return 0;

}


#if 0 

/* ** (2) |main| definition  */

using namespace std;

typedef unsigned int i_type;

int
main(void)
{

  cout.precision(100);
  
  bool verbose = true;
  bool DEBUG   = true;

  float *rp = 0;
  
  unsigned int UINT_SIZE = sizeof(unsigned int);
  unsigned int ULONG_SIZE = sizeof(unsigned long);
  unsigned int ULONG_LONG_SIZE = sizeof(unsigned long long);

  unsigned int FLT_SIZE = sizeof(float);
  unsigned int DBL_SIZE = sizeof(double);
  unsigned int LONG_DBL_SIZE = sizeof(long double);

  if (verbose)
    {
      cout << "INT_WIDTH       == " << INT_WIDTH  << endl    
           << "LONG_WIDTH      == " << LONG_WIDTH  << endl          
           << "UINT_SIZE       == " << UINT_SIZE  << endl
           << "ULONG_SIZE      == " << ULONG_SIZE << endl
           << "ULONG_LONG_SIZE == " << ULONG_LONG_SIZE << endl
           << "FLT_SIZE        == " << FLT_SIZE << endl
	   << "FLT_MAX         == " << FLT_MAX << endl
           << "DBL_MAX         == " << DBL_MAX << endl
           << "DBL_SIZE        == " << DBL_SIZE << endl
           << "LONG_DBL_SIZE   == " << LONG_DBL_SIZE  << endl
           << "CHAR_BIT        == " << CHAR_BIT << endl
           << "FLT_MANT_DIG    == " << FLT_MANT_DIG << endl
           << "FLT_DIG         == " << FLT_DIG << endl
           << "FLT_MIN_10_EXP  == " << FLT_MIN_10_EXP << endl
           << "FLT_MAX_10_EXP  == " << FLT_MAX_10_EXP << endl
           << "FLT_RADIX       == " << FLT_RADIX << endl;
    }


  i_type bit_pattern_i_type;
  i_type sign_bits;
  i_type result;
  bitset<sizeof(i_type) * CHAR_BIT> b;
  bitset<sizeof(unsigned long) * CHAR_BIT> bb;
   

  float second_largest_float = 0.0F;

  float f = FLT_MAX;
  double d = DBL_MAX;
  long double l = LDBL_MAX;

  i_type *ip = reinterpret_cast<i_type *>(&f);

  unsigned long *ulp = reinterpret_cast<unsigned long *>(&d);

  unsigned long *ulp = reinterpret_cast<unsigned long *>(&d);
  
  b = *ip;
  
  if (verbose)
    cout << "FLT_MAX == " << FLT_MAX << " == " << b << endl;

  bb = *ulp;
  
  cout << "DBL_MAX == " << DBL_MAX << " == " << bb << endl;
  
  cerr << "Enter <RETURN> to continue: ";
  getchar(); 

  // For double:  sign_bits shift:
  // 52
  // 63  

  
  bit_pattern_i_type = 1;
  
  b = bit_pattern_i_type;

  if (verbose)
    cout << "b (bit_pattern_i_type) == " << b << endl;
   
  result = bit_pattern_i_type ^ *ip;
  b = result;

  if (verbose)
    cout << "result == " << result << " == " << b << endl;

  rp = reinterpret_cast<float *>(&result);

  int counter;

  cout << "Before loop." << endl;
  
  sign_bits = (1 << 23) & (1 << 31);

  b = sign_bits;
  
  cout << "sign_bits == " << b << endl;

  for (int i = 0; i < (sizeof(float) * CHAR_BIT); ++i)
    {
      if (verbose)
        cout << "i == " << i << endl;

      b = *reinterpret_cast<i_type *>(&second_largest_float);
      
      cout << "second_largest_float == " << second_largest_float << " == " << b
	   << endl;

      if (second_largest_float > 0)
	{
	  cerr << "Enter <RETURN> to continue: ";
	  getchar();
	}
      
      bit_pattern_i_type = 1;
      bit_pattern_i_type <<= i;

      b = bit_pattern_i_type;

      if (verbose)
	cout << "After shift and XOR:" << endl
	     << "bit_pattern_i_type (1 << " << i << ") == " 
	     << bit_pattern_i_type << endl
	     <<	" b (bit_pattern_i_type) == " << b << endl; 

      result = (bit_pattern_i_type ^ *ip) ^ sign_bits;

      b = result;
      
      if (verbose)
	cout << "result == " << result << " == " << b << endl;

      rp = reinterpret_cast<float *>(&result);

      if (verbose)
	cout << "*rp (result as float) == " << *rp << endl;

      if (isnan(*rp))
	{
	  if (verbose)
	    cout << "*rp is nan.\nContinuing.\n\n";
	}
      else if (*rp < 0)
	{
	  if (verbose)
	    cout << "*rp < 0.\nContinuing.\n\n";
	}
      else if (*rp == 0)
	{
	  if (verbose)
	    cout << "*rp == 0.\nContinuing.\n\n";
	}

      else if (*rp > FLT_MAX) // This can't happen
	{
	  if (verbose)
	    cout << "*rp >  FLT_MAX" << endl << "Continuing."
		 << endl;
	}

      else if (*rp == FLT_MAX)
	{
	  if (verbose)
	    cout << "*rp ==  FLT_MAX" << endl << "Continuing."
		 << endl;
	  cerr << "Enter <RETURN> to continue: ";
	  getchar(); 
	}

      else if (second_largest_float > *rp)
	{
	  if (verbose)
	    cout << "second_largest_float > *rp\nContinuing." 
		 << "\n";
	} 

      else if (second_largest_float == *rp)
	{
	  if (verbose)
	    cout << "second_largest_float == *rp\nContinuing." 
		 << "\n";
	} 

      else if (*rp > second_largest_float && *rp < FLT_MAX)
	{
	  if (verbose)
	    cout << "*rp > second_largest_float && "
		 << "*rp < FLT_MAX" << endl
		 << "Setting second_largest_float to *rp"
		 << " and counter to i (" << i << ").\n";

	  cerr << "Enter <RETURN> to continue: ";
	  getchar(); 

	  second_largest_float = *rp;
	  counter = i;
	}
      else 
	{
	  if (verbose)
	    cout << "Some other condition. Continuing.\n";
	  cerr << "Enter <RETURN> to continue: ";
	  getchar(); 
	}
	      
    } /* |for| */

  cout << "After loop." << endl
       << "counter              == " << counter << endl
       << "second_largest_float == " << second_largest_float << endl;

  
  
  cout << "Exiting `ttemp' successfully with exit status 0." << endl;

  exit(0);

}  /* End of |main| definition  */


#endif 

/* Local Variables:  */
/* mode:CWEB         */
/* mode:show-paren   */
/* abbrev-mode:t     */
/* End:              */

