DOTC=dotc
CC=gcc
CFLAGS= -c -Wall

TAP=$(wildcard deps/tap/*.c)
TAP_OBJECTS=$(TAP:.c=.o)

TEST=$(wildcard test/*.c)
TEST_OBJECTS=$(TEST:.c=.o)
TEST_EXECUTABLES=$(TEST:.c=)

MAIN=main.c
MAIN_OBJECTS=$(MAIN:.c=.o)
EXECUTABLE=main

$(EXECUTABLE): $(MAIN)
	$(CC) $< $(CFLAGS) -o $@

build-test-%: $(TAP_OBJECTS)
	rm -rf test/pre.c
	dotc pre test/$(subst build-test-,,$@).c > test/pre.c
	cc test/pre.c $(TAP_OBJECTS) -o test/$(subst build-test-,,$@)

test-%: build-test-%
	test/$(subst test-,,$@)

test: $(subst test/,,$(addprefix build-test-,$(TEST_EXECUTABLES)))
	prove -e "$(PROVE_ENV)" $(PROVE_OPTIONS) $(TEST_EXECUTABLES)

testv: $(subst test/,,$(addprefix test-,$(TEST_EXECUTABLES)))

.c.o:
	$(CC) $(CFLAGS) $< -o $@  

clean: 
	rm -rf $(LIB_OBJECTS) $(MAIN_OBJECTS) $(EXECUTABLE) $(TEST_OBJECTS) $(TEST_EXECUTABLES) $(TAP_OBJECTS)

.PHONY: clean test testv
