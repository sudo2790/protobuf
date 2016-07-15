dnl $Id$
dnl config.m4 for extension protobuf

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(protobuf, for protobuf support,
dnl Make sure that the comment is aligned:
dnl [  --with-protobuf             Include protobuf support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(protobuf, whether to enable protobuf support,
dnl Make sure that the comment is aligned:
dnl [  --enable-protobuf           Enable protobuf support])

if test "$PHP_PROTOBUF" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-protobuf -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/protobuf.h"  # you most likely want to change this
  dnl if test -r $PHP_PROTOBUF/$SEARCH_FOR; then # path given as parameter
  dnl   PROTOBUF_DIR=$PHP_PROTOBUF
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for protobuf files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PROTOBUF_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PROTOBUF_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the protobuf distribution])
  dnl fi

  dnl # --with-protobuf -> add include path
  dnl PHP_ADD_INCLUDE($PROTOBUF_DIR/include)

  dnl # --with-protobuf -> check for lib and symbol presence
  dnl LIBNAME=protobuf # you may want to change this
  dnl LIBSYMBOL=protobuf # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PROTOBUF_DIR/$PHP_LIBDIR, PROTOBUF_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PROTOBUFLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong protobuf lib version or lib not found])
  dnl ],[
  dnl   -L$PROTOBUF_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PROTOBUF_SHARED_LIBADD)

  PHP_NEW_EXTENSION(protobuf, protobuf.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
