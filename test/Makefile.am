TESTS = 		\
	add_test 	\
	mult_test

check_PROGRAMS = $(TESTS) 

add_test_SOURCES = add_test.c $(top_builddir)/src/add.h
mult_test_SOURCES = mult_test.c $(top_builddir)/src/mult.h

LDADD = 																\
	${top_builddir}/src/libmulti-calc.la 	\
	${top_builddir}/deps/tap/libtap.la

check: ${TESTS}
