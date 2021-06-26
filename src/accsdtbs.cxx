/* /home/laurence/3DLDF-3.0/src/accsdtbs.cxx  */
/* Created by Laurence D. Finston (LDF) Thu 24 Jun 2021 08:45:33 PM CEST */

/* * (1) Copyright and License. */

/* This file is part of GNU 3DLDF, a package for three-dimensional drawing.  */
/* Copyright (C) 2021 The Free Software Foundation, Inc. */

/* GNU 3DLDF is free software; you can redistribute it and/or modify  */
/* it under the terms of the GNU General Public License as published by  */
/* the Free Software Foundation; either version 3 of the License, or  */
/* (at your option) any later version.   */

/* GNU 3DLDF is distributed in the hope that it will be useful,  */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of  */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the  */
/* GNU General Public License for more details.   */

/* You should have received a copy of the GNU General Public License  */
/* along with GNU 3DLDF; if not, write to the Free Software  */
/* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA */

/* GNU 3DLDF is a GNU package.   */
/* It is part of the GNU Project of the   */
/* Free Software Foundation  */
/* and is published under the GNU General Public License.  */
/* See the website http://www.gnu.org  */
/* for more information.    */
/* GNU 3DLDF is available for downloading from  */
/* http://www.gnu.org/software/3dldf/LDF.html. */

/* Please send bug reports to Laurence.Finston@gmx.de */
/* The mailing list help-3dldf@gnu.org is available for people to  */
/* ask other users for help.   */
/* The mailing list info-3dldf@gnu.org is for sending  */
/* announcements to users. To subscribe to these mailing lists, send an  */
/* email with ``subscribe <email-address>'' as the subject.   */

/* The author can be contacted at:     */

/* Laurence D. Finston 		       */
/* c/o Free Software Foundation, Inc.  */
/* 51 Franklin St, Fifth Floor 	       */
/* Boston, MA  02110-1301  	       */
/* USA                                 */                             

/* Laurence.Finston@gmx.de  */


/* Access database  */

/* This program can be used to access the database.                                 */
/* It can contain "one-off" or "throwaway" code for updating tables in the database */
/* with calculated values or for other purposes.                                    */
/* LDF 2021.06.24.  */

/* https://www.timecalculator.net/time-to-decimal

How to Calculate Decimal from Time

To get the total decimal hours we use the formula: h = hours + (minutes / 60) + (seconds / 3600).

To get the total decimal minutes we use the formula: m = (hours * 60) + minutes + (seconds / 60).

To get the total decimal seconds we use the formula: s = (hours * 3600) + (minutes * 60) + seconds.
*/

#include <stdlib.h>
#include <stdio.h>
#include <vector>
#include <errno.h>
#include <exception>
#include <iomanip>
#include <ios>
#include <iostream>
#include <iterator>
#include <new>
#include <sstream>   
#include <stdexcept>
#include <mysql.h>
#include <string> 

using namespace std;

MYSQL_RES *result;
MYSQL_ROW curr_row;
MYSQL *mysql;
unsigned int row_ctr; 
unsigned int field_ctr;
long affected_rows;
stringstream sql_strm;

int
submit_mysql_query(string query_str);

struct Star
{
      string common_name;
      string greek_name;
      string latin_name;
      string arabic_name;
      int flamsteed_designation_number;
      string bayer_designation_greek_letter;
      int bs_hr_number;
      int approx_rank_apparent_magnitude;
      string constellation_abbreviation;
      string constellation_full_name;
      string constellation_name_genitive;
      int constellation_number;
      int right_ascension_hours;
      int right_ascension_minutes;
      float right_ascension_seconds;
      float right_ascension_decimal_hours;
      int declination_degrees;
      int declination_minutes;
      float declination_seconds;
      float declination_decimal_degrees;

      int set(MYSQL_ROW curr_row);

      void show(string text) const;

};

vector<Star*> star_vector;

int
main(int argc, char *argv[])
{

   int status = 0;

   unsigned int mysql_timeout = 120;

   string where_str = "";

   if (argc > 1)
   {
       cerr << "argv[1] == " << argv[1] << endl;
       
       where_str = argv[1];

       cerr << "where_str == " << where_str << endl;

   }
   else 
      cerr << "argc == " << argc << " (<= 1)" << endl;
 
   mysql = mysql_init(0);

    if (mysql != 0) 
    {
          cerr << "In `main':"
                    << endl
                    << "mysql_init succeeded." << endl; 
    }
    else
    {
       cerr << "ERROR!"
            << endl
            << "`mysql_init failed'.  Failed to access database." 
            << endl
            << "Exiting program unsuccessfully with exit status 1."
            << endl;

       exit(1);

    }

    mysql_options(mysql, MYSQL_OPT_CONNECT_TIMEOUT, &mysql_timeout); 

    if (!mysql_real_connect(mysql, "localhost", "3dldf", 0, "3dldf", 0, NULL, 0))
    {
        cerr << "ERROR! `mysql_real_connect' failed, returning NULL." 
                  << endl 
                  << "Failed to connect to database: Error: " << mysql_error(mysql) 
                  << endl
                  << "Exiting program unsuccessfully with exit status 1."
                  << endl;
        return 1;
    }
    else
    { 
        cerr << "In `main':"
                  << endl 
                  << "`mysql_real_connect' succeeded." << endl;
   }  

   Star *star = 0;

   stringstream sql_strm;

   curr_row = 0;

   sql_strm << "select common_name, greek_name, latin_name, "
            << "arabic_name, flamsteed_designation_number, "
            << "bayer_designation_greek_letter, bs_hr_number, "
            << "approx_rank_apparent_magnitude, constellation_abbreviation, "
            << "constellation_full_name, constellation_name_genitive, constellation_number, "
            << "right_ascension_hours, right_ascension_minutes, "
            << "right_ascension_seconds, right_ascension_decimal_hours, "
            << "declination_degrees, declination_minutes, declination_seconds, "
            << "declination_decimal_degrees from Stars ";

   if (where_str != "")
      sql_strm << "where " << where_str << " ";

   sql_strm << "order by bs_hr_number";

      cerr << "`sql_strm.str()' == " << sql_strm.str() << endl;

   status = submit_mysql_query(sql_strm.str());

   sql_strm.str("");

   if (status != 0)
   {
      cerr << "ERROR!"
           << endl
           << "`submit_mysql_query' failed, returning " 
           << status << "." << endl 
           << "MySQL error:  " << mysql_error(mysql)
           << endl 
           << "MySQL error number:  " << mysql_errno(mysql)
           << endl;
   }

   else 
   {
      cerr << "In `main':"
           << endl
           << "`submit_mysql_query' succeeded, returning 0."
           << endl 
           << "`affected_rows' == " << affected_rows
           << endl 
           << "`row_ctr' == " << row_ctr
           << endl 
           << "`field_ctr' == " << field_ctr
           << endl;
   }

   /*  Process the contents of |curr_row|  */

   do 
   {

       curr_row = mysql_fetch_row(result);

       if (curr_row == 0)
       {

         cerr << "`mysql_fetch_row' returned NULL." 
              << endl;

         if (*mysql_error(mysql))
         {
            cerr << "ERROR!  In `main':  `mysql_fetch_row' failed "
                 << "returning NULL." << endl
                 << "Error:  " << mysql_error(mysql) << endl
                 << "Exiting program unsuccessfully with exit status 1."
                 << endl;

            if (result)
            {
                mysql_free_result(result);
                result = 0;
            }

            return 1;

         }

         else
         {
           cerr << "No more rows." << endl;
          
           break;
         }

       }  /* |if (curr_row == 0)|  */

       else 
       {

              cerr << "In `main':"
                   << endl 
                   << "`mysql_fetch_row' succeeded, `curr_row' is non-NULL."
                   << endl;
          }      

         try
         {
            star = new Star;
         }

         catch(bad_alloc)
         {
             cerr << "ERROR! In `main':"
                  << endl 
                  << "`create_new<Star>' failed.  Rethrowing `bad_alloc'."
                  << endl;

             throw;
         }

            cerr << "In `main':"
                 << endl 
                 << "`new Star' succeeded."
                 << endl;

         status = star->set(curr_row);

         if (status != 0)
         {
             cerr << "ERROR! In `main':"
                  << endl 
                  << "`Star::set' failed, returning " << status << "." << endl
                  << "Exiting program unsuccessfully with exit status 1."
                  << endl;

             if (result)
             {
                 mysql_free_result(result);
                 result = 0;
             }         

             exit(1);

         }  /* |if (status != 0)|  */

             cerr << "In `main':"
                  << endl 
                  << "`Star::set' succeeded, returning 0."
                  << endl;
  
         star_vector.push_back(star);


   } while (curr_row != 0);

   /* Free |result|  */

   if (result)
   {
       mysql_free_result(result);
       result = 0;
   }

   cerr << "star_vector.size() == " << star_vector.size() << endl;

   if (star_vector.size() > 0)
      cerr << "star_vector:" << endl;

   stringstream s;
   int i = 1;

   for (vector<Star*>::iterator iter = star_vector.begin();
        iter != star_vector.end();
        ++iter)
   {
      s << "Star " << i++ << ":";

      (*iter)->show(s.str());

      s.str("");
   }

   exit(0);


#if 1 /* 0 */

   float ra_decimal_hours;
   float decl_decimal_degrees;
   
   int decl_sign;

   cerr << "Calculating `right_ascension_decimal_hours' and `declination_decimal_degrees'." 
        << endl; 

   for (vector<Star*>::iterator iter = star_vector.begin();
       iter != star_vector.end(); 
       ++iter)
   {

      ra_decimal_hours =   (*iter)->right_ascension_hours + ((*iter)->right_ascension_minutes / 60.0)
                         + ((*iter)->right_ascension_seconds / 3600.0);

      if ((*iter)->declination_degrees >= 1)
          decl_sign = 1;
      else
          decl_sign = -1;

      decl_decimal_degrees = decl_sign * (abs((*iter)->declination_degrees) + ((*iter)->declination_minutes / 60.0)
                         + ((*iter)->declination_seconds / 3600.0));

      if (ra_decimal_hours == 0.0 && decl_decimal_degrees == 0.0)
      {
         continue;
      }

      sql_strm << "update Stars set ";

      if (ra_decimal_hours != 0)
         sql_strm << "right_ascension_decimal_hours = " << ra_decimal_hours;

      if (ra_decimal_hours != 0 && decl_decimal_degrees != 0)
         sql_strm  << ", ";

      if (decl_decimal_degrees != 0)
         sql_strm  << "declination_decimal_degrees = " << decl_decimal_degrees;

      sql_strm << " where bs_hr_number = " << (*iter)->bs_hr_number;

      cerr << "`sql_strm.str()' == " << sql_strm.str() << endl;

      status = submit_mysql_query(sql_strm.str());

      cerr << "`submit_mysql_query' returned " << status << endl;
 
      sql_strm.str("");

      cerr << endl;

   }

#endif 

#if 0 

   int prev_bs_hr_number = 0;


   cerr << "Duplicates:" << endl;

   for (vector<Star*>::iterator iter = star_vector.begin();
       iter != star_vector.end(); 
       ++iter)
   {
       if ((*iter)->bs_hr_number == prev_bs_hr_number)
          cerr << prev_bs_hr_number << endl;
        
       prev_bs_hr_number = (*iter)->bs_hr_number;
   }
#endif 

#if 0 /* 1 */

   float ra_decimal_degrees;

   for (vector<Star*>::iterator iter = star_vector.begin();
       iter != star_vector.end(); 
       ++iter)
   {
      if ((*iter)->right_ascension_decimal_hours != 0)
      {
          ra_decimal_degrees =   ((*iter)->right_ascension_decimal_hours / 24.0) * 360.0;

          sql_strm << "update Stars set right_ascension_decimal_degrees = " << ra_decimal_degrees 
                   << " where bs_hr_number = " << (*iter)->bs_hr_number;

          cerr << "`sql_strm.str()' == " << sql_strm.str() << endl;

          status = submit_mysql_query(sql_strm.str());

          cerr << "`submit_mysql_query' returned " << status << endl;
 
          sql_strm.str("");

          cerr << endl;
      }
   }
#endif 


   exit(0);


}  /* End of |main| definition  */

int
Star::set(MYSQL_ROW curr_row)
{

   if (curr_row == 0)
   {
       cerr << "ERROR!  In `Star::set':"
                 << endl
                 << "`curr_row' is NULL.  Can't set `Star'."
                 << endl 
                 << "Exiting program unsuccessfully with exit status 1."
                 << endl;

       return 1;

   }

   common_name                    = curr_row[0];
   greek_name                     = curr_row[1];
   latin_name                     = curr_row[2];
   arabic_name                    = curr_row[3];     
   flamsteed_designation_number   = atoi(curr_row[4]);
   bayer_designation_greek_letter = curr_row[5];
   bs_hr_number                   = atoi(curr_row[6]);
   approx_rank_apparent_magnitude = atoi(curr_row[7]);
   constellation_abbreviation     = curr_row[8];
   constellation_full_name        = curr_row[9];
   constellation_name_genitive    = curr_row[10];
   constellation_number           = atoi(curr_row[11]);
   right_ascension_hours          = atoi(curr_row[12]);
   right_ascension_minutes        = atoi(curr_row[13]);
   right_ascension_seconds        = atof(curr_row[14]);
   right_ascension_decimal_hours  = atof(curr_row[15]);
   declination_degrees            = atoi(curr_row[16]);
   declination_minutes            = atoi(curr_row[17]);
   declination_seconds            = atof(curr_row[18]);
   declination_decimal_degrees    = atof(curr_row[19]);

   return 0;

}
      
      
int
submit_mysql_query(string query_str)
{
  int status = 0;

   mysql_query(mysql, query_str.c_str());

   if (status != 0)
     {
          
       cerr  << "ERROR!  In `|submit_mysql_query|':"
	     << endl 
	     << "`mysql_query' failed, returning " << status << ":"
	     << endl 
	     << "Error:  " << mysql_error(mysql)
	     << endl 
	     << "Error number:  " << mysql_errno(mysql)
	     << endl 
	     << "Exiting function unsuccessfully with return value 1." 
	     << endl;

       return 1;
         
     }  /* |if| (|mysql_query| failed.)  */
     else
        cerr << "`mysql_query' succeeded, returning 0." << endl;

   result = mysql_store_result(mysql);        

   if (result == 0)
   {
     cerr  << "In `submit_mysql_query':  "
          << "`mysql_store_result' returned 0." << endl 
          << "No results.  Exiting function successfully with return value 2."
          << endl;
          
     return 2;

   }  /* |if| (No result)  */

   else
   {
       row_ctr   = mysql_num_rows(result);
       field_ctr = mysql_num_fields(result);

       cerr << "In `|submit_mysql_query|':  "
            << "`mysql_store_result' returned results." 
            << endl
            << "`row_ctr' == " << row_ctr 
            << endl
            << "`field_ctr' == " << field_ctr 
            << endl;

   
       affected_rows = (long) mysql_affected_rows(mysql);

       cerr << "`affected_rows' == " << affected_rows
            << endl;

   }

   return 0;
   
}  /* |submit_mysql_query| definition */

void 
Star::show(string text) const
{
    cerr << "Entering `Star::show'." << endl;

    if (text == "")
       text = "Star:";

    cerr << text << endl
         << "common_name                    == " << common_name << endl
         << "greek_name                     == " << greek_name << endl
         << "latin_name                     == " << latin_name << endl
         << "arabic_name                    == " << arabic_name << endl
         << "flamsteed_designation_number   == " << flamsteed_designation_number << endl
         << "bayer_designation_greek_letter == " << bayer_designation_greek_letter << endl
         << "bs_hr_number                   == " << bs_hr_number << endl
         << "approx_rank_apparent_magnitude == " << approx_rank_apparent_magnitude << endl
         << "constellation_abbreviation     == " << constellation_abbreviation << endl
         << "constellation_full_name        == " << constellation_full_name << endl
         << "constellation_name_genitive    == " << constellation_name_genitive << endl
         << "constellation_number           == " << constellation_number << endl
         << "right_ascension_hours          == " << right_ascension_hours << endl
         << "right_ascension_minutes        == " << right_ascension_minutes << endl
         << "right_ascension_seconds        == " << right_ascension_seconds << endl
         << "right_ascension_decimal_hours  == " << right_ascension_decimal_hours << endl
         << "declination_degrees            == " << declination_degrees << endl
         << "declination_minutes            == " << declination_minutes << endl
         << "declination_seconds            == " << declination_seconds << endl
         << "declination_decimal_degrees    == " << declination_decimal_degrees << endl
         << endl;

    return;

} /* End of |Star::show| definition.  */




/* Local Variables:  */
/* mode:CWEB         */
/* End:              */
