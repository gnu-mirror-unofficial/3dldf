cweav-3D.ch
This is the change file for CWEB's CWEAVE for use with GNU 3DLDF.
Laurence Finston Thu Dec  1 19:07:26 CET 2005

$Id: cweav-3D.ch,v 1.2 2008/02/06 17:16:10 lfinsto1 Exp $

@x 
@d max_bytes 90000 /* the number of bytes in identifiers,
  index entries, and section names */
@d max_names 4000 /* number of identifiers, strings, section names;
  must be less than 10240; used in |"common.w"| */
@d max_sections 2000 /* greater than the total number of sections */
@d hash_size 353 /* should be prime */
@d buf_size 100 /* maximum length of input line, plus one */
@d longest_name 10000 /* section names and strings shouldn't be longer than this */
@d long_buf_size (buf_size+longest_name)
@d line_length 80 /* lines of \TEX/ output have at most this many characters;
  should be less than 256 */
@d max_refs 20000 /* number of cross-references; must be less than 65536 */
@d max_toks 20000 /* number of symbols in \CEE/ texts being parsed;
  must be less than 65536 */
@d max_texts 4000 /* number of phrases in \CEE/ texts being parsed;
  must be less than 10240 */
@d max_scraps 2000 /* number of tokens in \CEE/ texts being parsed */
@d stack_size 400 /* number of simultaneous output levels */
@y
@d max_bytes 90000 /* the number of bytes in identifiers,
  index entries, and section names */
@d max_names 10239 /* number of identifiers, strings, section names;
  must be less than 10240; used in |"common.w"| */
@d max_sections 10000 /* greater than the total number of sections */
@d hash_size 353 /* should be prime */
@d buf_size 100 /* maximum length of input line, plus one */
@d longest_name 10000 /* section names and strings shouldn't be longer than this */
@d long_buf_size (buf_size+longest_name)
@d line_length 80 /* lines of \TEX/ output have at most this many characters;
  should be less than 256 */
@d max_refs 65535 /* number of cross-references; must be less than 65536 */
@d max_toks 65535 /* number of symbols in \CEE/ texts being parsed;
  must be less than 65536 */
@d max_texts 10239 /* number of phrases in \CEE/ texts being parsed;
  must be less than 10240 */
@d max_scraps 6000 /* number of tokens in \CEE/ texts being parsed */
@d stack_size 400 /* number of simultaneous output levels */
@z
