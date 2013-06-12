#! /bin/bash -x

#### rebuild.sh
#### [...]/3dldf/rebuild.sh

#### Created by Laurence D. Finston (LDF) Mon Jun  3 20:42:11 CEST 2013

#### Usage:  rebuild.sh [ARG] [ARG]
#### Optional arguments:  1:  Run 'make maintainer-clean' (Use 0 as placeholder to suppress 
####                                                       if arg. 3 is used)
####                      2:  Run 'configure' using the '--disable-shared' option.
####                          This speeds up building the package.
####                          (Use 0 as placeholder to suppress if arg. 3 is used)
#### 
####                      3:  Run 'make'
####
#### For arg 3, it doesn't matter what arguments are used, as long as it exists. 
#### That is, it isn't checked  ('1' is a good choice).
#### For args 1 and 2, the same applies, except that '0' can be used as a placeholder, if
#### arg. 3 is  used.  In this case, 'make maintainer-clean' is not run and/or the 
#### '--disable-shared' option is not passed to 'configure'. 
####
#### LDF 2013.06.04.
#### LDF 2013.06.12.

cd /home/lfinsto/3dldf

#echo "Number of args:  $#"

#### $1 cannot be tested in the first conditional, because this causes 
#### an error if there are no arguments.
#### LDF 2013.06.12.

if test $# -gt 0 
then
   if test $1 -ne 0 
   then
      echo "Running \`make maintainer-clean'"
      make maintainer-clean 
   else
      echo "Not running \`make maintainer-clean'"
   fi
   else
      echo "Not running \`make maintainer-clean'"
fi

if test $# -gt 1 
then
   if test $2 -ne 0 
   then
      echo "Not building  shared libraries'"
      CONF_STATIC="--disable-shared " 
   else
      echo "Building  shared libraries'"
   fi
   else
      echo "Building  shared libraries'"
fi

libtoolize && aclocal && autoconf && autoheader && automake \
   && configure --prefix=`pwd` $CONF_STATIC LIBS="-lgsl -lgslcblas -lm"

r=$?

if test $r -eq 0 -a $# -gt 2
then
   echo "Running \`make'"
   make
else
   echo "Not running \`make'"
fi

exit 0
