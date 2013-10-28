TESTCASES =\
	add				\
	mult

check_PROGRAMS = $(TESTCASES) 

AM_CFLAGS = -I$(top_srcdir)/src/ -I${top_srcdir}/deps/tap/
AM_LDFLAGS = -no-install
LDADD = 																\
	${top_builddir}/src/libmulti-calc.la 	\
	${top_builddir}/deps/tap/libtap.la

check-%: BASE=$(subst -,_,$(subst check-,,$@))
check-%: ${TESTCASES}
	$(AM_V_GEN) srcdir=${srcdir} prove -e "${PROVE_ENV}" ${PROVE_OPTIONS} ${TESTCASES}

check: ${TESTCASES}
	$(AM_V_GEN) srcdir=${srcdir} prove -e "${PROVE_ENV}" ${PROVE_OPTIONS} ${TESTCASES}

.PHONY: check
