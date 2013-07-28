ccomm-3D.ch
This is the change file for CWEB's `common.w' for 
CTANGLE for use with GNU 3DLDF.
Laurence Finston Fri Jan 14 12:25:11 CET 2005

If you change |max_bytes|, |max_names|, |hash_size|, or |buf_size|
you have to change them also in the file |"common.w"|.


$Id: ccomm-3D.ch,v 1.2 2005/12/01 18:48:18 lfinsto1 Exp $


@x 
@d max_names 4000 /* number of identifiers, strings, section names;
  must be less than 10240 */
@y
@d max_names 10239 /* number of identifiers, strings, section names;
  must be less than 10240 */
@z
