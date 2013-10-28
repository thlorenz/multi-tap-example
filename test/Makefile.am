UNIT_TESTS = 		\
	add_test 	\
	mult_test

TESTCASES = ${UNIT_TESTS}

check_PROGRAMS = $(TESTCASES) 

#add_test_SOURCES = add_test.c $(top_builddir)/src/add.h
#mult_test_SOURCES = mult_test.c $(top_builddir)/src/mult.h

AM_CFLAGS = -I$(top_srcdir)/src/ -I${top_srcdir}/deps/tap/
AM_LDFLAGS = -no-install
LDADD = 																\
	${top_builddir}/src/libmulti-calc.la 	\
	${top_builddir}/deps/tap/libtap.la

check-%: BASE=$(subst -,_,$(subst check-,,$@))
check-%: TESTCASES=$(value $(BASE))_unit_tests)
check-%: ${TESTCASES}
	$(AM_V_GEN) srcdir=${srcdir} prove -e "${PROVE_ENV}" ${PROVE_OPTIONS} ${TESTCASES}

check: ${TESTCASES}
	$(AM_V_GEN) srcdir=${srcdir} prove -e "${PROVE_ENV}" ${PROVE_OPTIONS} ${TESTCASES}

.PHONY: check
