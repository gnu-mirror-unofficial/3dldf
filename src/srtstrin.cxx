/* srtstrin.cxx  */
/* Created by Laurence D. Finston (LDF) Sun 08 Aug 2021 12:18:38 PM CEST */

/* * (0) Copyright and License.*/

/* This file is part of GNU 3DLDF, a package for three-dimensional drawing. */
/* Copyright (C) 2021 The Free Software Foundation, Inc.                    */

/* GNU 3DLDF is free software; you can redistribute it and/or modify */
/* it under the terms of the GNU General Public License as published by */
/* the Free Software Foundation; either version 3 of the License, or */
/* (at your option) any later version. */

/* GNU 3DLDF is distributed in the hope that it will be useful, */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the */
/* GNU General Public License for more details. */

/* You should have received a copy of the GNU General Public License */
/* along with GNU 3DLDF; if not, write to the Free Software */
/* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA */

/* GNU 3DLDF is a GNU package.  */
/* It is part of the GNU Project of the  */
/* Free Software Foundation */
/* and is published under the GNU General Public License. */
/* See the website http://www.gnu.org */
/* for more information.   */
/* GNU 3DLDF is available for downloading from */
/* http://www.gnu.org/software/3dldf/LDF.html. */

/* ("@@" stands for a single at-sign in the following paragraph.) */

/* Please send bug reports to Laurence.Finston@@gmx.de */
/* The mailing list help-3dldf@@gnu.org is available for people to */
/* ask other users for help.  */
/* The mailing list info-3dldf@@gnu.org is for sending */
/* announcements to users. To subscribe to these mailing lists, send an */
/* email with "subscribe <email-address>" as the subject.  */

/* The author can be contacted at: */

/* Laurence D. Finston                 */ 
/* c/o Free Software Foundation, Inc.  */
/* 51 Franklin St, Fifth Floor         */ 
/* Boston, MA  02110-1301              */
/* USA                                 */

/* Laurence.Finston@gmx.de             */

/* srtstrin sorts the contents of the file 'clstsph_1_star_info_combined.tex' */
/* alphabetically by star name.  Greek letters are converted to the English  */
/* equivalents, e.g., "$\alpha$" is converted to "alpha". The character '^'  */
/* (for superscripts) is converted to a space.                               */
/* LDF 2021.08.08.                                                           */

#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <iomanip>
#include <ios>
#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int
main(void)
{
   cerr << "Entering `srtstrin'." << endl;

   FILE *fp;
   FILE *fp_1;

   string s;

   ofstream out_file;

   out_file.open("clstsph_1_star_info_alpha_temp.tex");

   char buffer[256];
   memset(buffer, 0, 256);

   char buffer_1[256];
   memset(buffer_1, 0, 256);

   size_t size;
   size_t size_1;

   fp = popen("cat clstsph_1_star_info_combined.tex | cut -d{ -f4 | tr -d \"}\"", "r");
   fp_1 = popen("cat clstsph_1_star_info_combined.tex", "r");

   if (fp == 0 || fp_1 == 0)
      cerr << "`popen' failed, returning NULL." << endl;
#if 0 
   else    
      cerr << "`popen' succeeded, returning non-NULL." << endl;
#endif 

   do 
   {
       fgets(buffer, 256, fp);
       fgets(buffer_1, 256, fp_1);

#if 0 
       cerr << "strlen(buffer)   == " << strlen(buffer) << endl
            << "strlen(buffer_1) == " << strlen(buffer_1) << endl;

       if (strlen(buffer) > 0)
          cerr << "buffer:" << endl << buffer;
       if (strlen(buffer_1) > 0)
          cerr << "buffer_1:" << endl << buffer_1;
#endif 

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

#if 0
       cerr << "s == " << s << endl;
#endif 

       out_file << "{" << s << "}" << buffer_1;

   }
   while (strlen(buffer) > 0 && strlen(buffer_1) > 0 && !feof(fp) && !feof(fp_1));

   pclose(fp);
   pclose(fp_1);

   fp   = 0;
   fp_1 = 0;
   out_file.close();

   cerr << "Exiting `srtstrin' successfully with return value 0." << endl;

   return 0;

}

/* Local Variables:  */
/* mode:CWEB         */
/* mode:show-paren   */
/* abbrev-mode:t     */
/* End:              */

