CC=cc
CFLAGS=-c -Wall

TAP=$(wildcard deps/tap/*.c)
TAP_OBJECTS=$(TAP:.c=.o)

LIB=$(wildcard lib/*.c)
LIB_OBJECTS=$(LIB:.c=.o)

TEST=$(wildcard test/*.c)
TEST_OBJECTS=$(TEST:.c=.o)
TEST_EXECUTABLES=$(TEST:.c=)

MAIN=main.c
MAIN_OBJECTS=$(MAIN:.c=.o)
EXECUTABLE=main

$(EXECUTABLE): $(LIB_OBJECTS) $(MAIN_OBJECTS) 
	$(CC) $(LIB_OBJECTS) $(MAIN_OBJECTS) -o $@

build-test-%: $(LIB_OBJECTS) $(TAP_OBJECTS)
	$(CC) test/$(subst build-test-,,$@).c $(LIB_OBJECTS) $(TAP_OBJECTS) -o test/$(subst build-test-,,$@)

test-%: build-test-%
	test/$(subst test-,,$@)

test: $(subst test/,,$(addprefix test-,$(TEST_EXECUTABLES)))
	prove -e "$(PROVE_ENV)" $(PROVE_OPTIONS) $(TEST_EXECUTABLES)

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean: 
	rm -rf $(LIB_OBJECTS) $(MAIN_OBJECTS) $(EXECUTABLE) $(TEST_OBJECTS) $(TEST_EXECUTABLES) $(TAP_OBJECTS)

.PHONY: clean test
