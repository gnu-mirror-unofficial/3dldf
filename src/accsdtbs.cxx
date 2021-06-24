/* /home/laurence/3DLDF-3.0/src/accsdtbs.cxx  */
/* Created by Laurence D. Finston (LDF) Thu 24 Jun 2021 08:45:33 PM CEST */

/* Access database  */

/* https://www.timecalculator.net/time-to-decimal

How to Calculate Decimal from Time

To get the total decimal hours we use the formula: h = hours + (minutes / 60) + (seconds / 3600).

To get the total decimal minutes we use the formula: m = (hours * 60) + minutes + (seconds / 60).

To get the total decimal seconds we use the formula: s = (hours * 3600) + (minutes * 60) + seconds.
*/

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
      real right_ascension_seconds;
      real right_ascension_decimal_hours;
      int declination_degrees;
      int declination_minutes;
      real declination_seconds;
      real declination_decimal_degrees;
};

int
main(int argc, char *argv[])
{

   int status = 0;

   unsigned int mysql_timeout = 120;

   mysql = mysql_init(0);

    if (mysql != 0) 
    {
          cerr << thread_name << "In `Scanner_Type::load_database':"
                    << endl
                    << "mysql_init succeeded." << endl; 
    }
    else
    {
       cerr << "ERROR!"
                 << endl
                 << "`mysql_init failed'.  Failed to load database." 
                 << endl
                 << "Exiting function unsuccessfully with return value 1."
                 << endl;
       return 1;

    }

    mysql_options(mysql, MYSQL_OPT_CONNECT_TIMEOUT, &mysql_timeout); 

    if (!mysql_real_connect(this->mysql, "localhost", "3dldf", 0, "3dldf", 0, NULL, 0))
    {
        cerr << "ERROR! `mysql_real_connect' failed, returning NULL." 
                  << endl 
                  << "Failed to connect to database: Error: " << mysql_error(mysql) 
                  << endl
                  << "Exiting function unsuccessfully with return value 1."
                  << endl;
        return 1;
    }
    else
    { 
        cerr << "In `Scanner_Type::load_database':"
                  << endl 
                  << "`mysql_real_connect' succeeded." << endl;

   }  



int
Scanner_Type::submit_mysql_query(string query_str)
{
  int status = 0;

  bool DEBUG = false; /* |true| */
  
  mysql_query(mysql, query_str.c_str());

   if (status != 0)
     {
          
       cerr  << "ERROR!  In `|Scanner_Type::submit_mysql_query|':"
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

   result = mysql_store_result(mysql);        

   if (result == 0)
   {
     cerr  << "In `|Scanner_Type::submit_mysql_query|':  "
          << "`mysql_store_result' returned 0." << endl 
          << "No results.  Continuing."
          << endl;
          
   }  /* |if| (No result)  */
   else
   {
       row_ctr   = mysql_num_rows(result);
       field_ctr = mysql_num_fields(result);

       if (DEBUG)
       {
          cerr << "In `|Scanner_Type::submit_mysql_query|':  "
               << "`mysql_store_result' returned results." 
               << endl
               << "`row_ctr' == " << row_ctr 
               << endl
               << "`field_ctr' == " << field_ctr 
               << endl;

       }   /* |if (DEBUG)|  */
   
       affected_rows = (long) mysql_affected_rows(mysql);

       if (DEBUG)
       {
         cerr << "`affected_rows' == " << affected_rows
              << endl;
       }
   }

   return 0;
   
}  /* |submit_mysql_query| definition */


   string s;
   string t;
   string u;
   string w;
   size_t pos;

   int status = 0;

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
            << "declination_decimal_degrees from Stars "
            << "order by constellation_abbreviation, bayer_designation_greek_letter;";


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

   else if (DEBUG)
   {
      cerr << "In `Scanner_Type::::get_astronomy':"
           << endl
           << "`Scanner_Type::submit_mysql_query' succeeded, returning 0."
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
         if (DEBUG) 
           cerr << "`mysql_fetch_row' returned NULL." 
                << endl;

         if (*mysql_error(mysql))
         {
            cerr << "ERROR!  In `Scanner_Type::::get_astronomy':  `mysql_fetch_row' failed "
                 << "returning NULL." << endl
                 << "Error:  " << mysql_error(mysql) << endl
                 << "Exiting function unsuccessfully with return value 1."
                 << endl;

            if (result)
            {
                mysql_free_result(result);
                result = 0;
            }

            return 1;

         }

         else if (DEBUG)
         {
           cerr << "No more rows." << endl;
          
           break;
         }

       }  /* |if (curr_row == 0)|  */

       else 
       {

              cerr << "In `Scanner_Type::get_astronomy':"
                   << endl 
                   << "`mysql_fetch_row' succeeded, `curr_row' is non-NULL."
                   << endl;
          }      

         try
         {
            star = create_new<Star>(0, this);
         }

         catch(bad_alloc)
         {
             cerr << "ERROR! In `Scanner_Type::get_astronomy':"
                  << endl 
                  << "`create_new<Star>' failed.  Rethrowing `bad_alloc'."
                  << endl;

             throw;
         }

            cerr << "In `Scanner_Type::get_astronomy':"
                 << endl 
                 << "`create_new<Star>' succeeded."
                 << endl;

         status = star->set(this);

         if (status != 0)
         {
             cerr << "ERROR! In `Scanner_Type::get_astronomy':"
                  << endl 
                  << "`Star::set' failed, returning " << status << "." << endl
                  << "Exiting function unsuccessfully with return value 1."
                  << endl;

             if (result)
             {
                 mysql_free_result(result);
                 result = 0;
             }         

             return 1;

         }  /* |if (status != 0)|  */


             cerr << "In `Scanner_Type::get_astronomy':"
                  << endl 
                  << "`Star::set' succeeded, returning 0."
                  << endl;
  
         star_vector.push_back(star);

       }  /* |else| */


   } while (curr_row != 0);

   /* Free |result|  */

   if (result)
   {
       mysql_free_result(result);
       result = 0;
   }

   if (star_vector.size() > 0)
   {

         cerr << "In `Scanner_Type::get_astronomy':  `star_vector.size()' == "
              << star_vector.size() << endl;

         if (star_vector.size() == 0)
           cerr << "`star_vector.size()' == 0.  Not showing `star_vector'." << endl;
         else
           cerr << "`star_vector.size()' == " << star_vector.size() << " (> 0).  Showing `star_vector':" 
                << endl;

      for (vector<Star *>::iterator iter = star_vector.begin();
           iter != star_vector.end();
           ++iter)
      {



         if ((*iter)->bayer_designation_greek_letter != "" && (*iter)->constellation_name_genitive != "")
         {
            s = (*iter)->bayer_designation_greek_letter;
            t = (*iter)->constellation_name_genitive;

/* !!START HERE  LDF 2021.06.22.  Create variable.  Move this above.  The common names should be synonyms.  */ 


               cerr << "Before replacing:" << endl 
                    << "`s' == " << s << endl
                    << "`t' == " << t << endl;

            while (true)
            {
               pos = s.find(" ");
               if (pos != string::npos)
                  s.replace(pos, 1, "_");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("0");
               if (pos != string::npos)
                  s.replace(pos, 1, "zero");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("1");
               if (pos != string::npos)
                  s.replace(pos, 1, "one");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("2");
               if (pos != string::npos)
                  s.replace(pos, 1, "two");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("3");
               if (pos != string::npos)
                  s.replace(pos, 1, "three");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("4");
               if (pos != string::npos)
                  s.replace(pos, 1, "four");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("5");
               if (pos != string::npos)
                  s.replace(pos, 1, "five");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("6");
               if (pos != string::npos)
                  s.replace(pos, 1, "six");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("7");
               if (pos != string::npos)
                  s.replace(pos, 1, "seven");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("8");
               if (pos != string::npos)
                  s.replace(pos, 1, "eight");
               else
                  break;
            } 

            while (true)
            {
               pos = s.find("9");
               if (pos != string::npos)
                  s.replace(pos, 1, "nine");
               else
                  break;
            } 

            while (true)
            {
               pos = t.find(" ");
               if (pos != string::npos)
                  t.replace(pos, 1, "_");
               else
                  break;
            } 


               cerr << "After replacing:" << endl 
                    << "`s' == " << s << endl
                    << "`t' == " << t << endl;

            u  = s;
            u += "_"; 
            u += t;


               cerr << "`u' == " << u << " (name of `star' constant)" << endl;


      }  /* |for|  */   


   }  /* |if (star_vector.size() > 0)|  */

int
set(Scanner_Node scanner_node);


int
Star::set(Scanner_Node scanner_node)
{

   stringstream cerr;

   bool error_stop_value   = true;
   bool warning_stop_value = true;
   string thread_name      = "";

   if (scanner_node)
      scanner_node->get_thread_name_and_stop_values(&thread_name,
                                                    &error_stop_value,
                                                    &warning_stop_value);


   if (scanner_node->curr_row == 0)
   {
       cerr << "ERROR!  In `Star::set' with `Scanner_Node' argument:"
                 << endl
                 << "`scanner_node->curr_row' is NULL.  Can't set `Star'."
                 << endl 
                 << "Exiting function unsuccessfully with return value 1."
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
      
      



