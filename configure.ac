# project name, version, bug reports
AC_INIT([multi-tap], [0.0.1], [thlorenz@gmx.de])

# using foreign in order to prevent GNU standard from being enforced
# as a result we don't have to create ChangeLog, AUTHORS and other files 
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

# Look for C compiler
AC_PROG_CC

AC_CONFIG_HEADERS([config.h])

# add any Makefile created in the future here
AC_CONFIG_FILES([
  Makefile
  src/Makefile
])

AC_OUTPUT
