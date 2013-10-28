TESTS = add_test mult_test
check_PROGRAMS = add_test mult_test
add_test_SOURCES = add_test.c $(top_builddir)/src/add.h
mult_test_SOURCES = mult_test.c $(top_builddir)/src/mult.h
LDADD = ${top_builddir}/src/libmulti-calc.la

check: ${TESTS}
