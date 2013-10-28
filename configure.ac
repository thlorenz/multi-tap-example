# project name, version, bug reports
AC_INIT([multi-tap], [0.0.1], [thlorenz@gmx.de])

# using foreign in order to prevent GNU standard from being enforced
# as a result we don't have to create ChangeLog, AUTHORS and other files 
AM_INIT_AUTOMAKE([-Wall -Werror -Wno-portability foreign])

# required by libtool
AM_PROG_AR

# Look for C compiler and Libtool
AC_PROG_CC
AC_PROG_LIBTOOL

AC_CONFIG_HEADERS([config.h])

# add any Makefile created in the future here
AC_CONFIG_FILES([
  Makefile
  src/Makefile
  test/Makefile
  deps/tap/Makefile
])

# required by libtool 
LT_INIT([shared])
AC_CONFIG_MACRO_DIR([m4])

AC_OUTPUT
