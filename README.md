# multi-tap-example [![build status](https://secure.travis-ci.org/thlorenz/multi-tap-example.png)](http://travis-ci.org/thlorenz/multi-tap-example)

Example of setting up a project to run multiple tap tests in one go or one by one.

## Installation

    npm install thlorenz/multi-tap-example

    autoreconf --install

    ./configure

## Program

### Make program

    cd src && make

## Run program

    ./src/multi-tap-main

## Tests

### Make tests

    cd test && make

### Run tests

    make check

### Run one test only

Two options to archieve that:
    
#### a) Change testcases in Mainfile.am

Change `TESTCASES` inside [test/Makefile.am](https://github.com/thlorenz/multi-tap-example/blob/master/test/Makefile.am)
to only include the test you want to run

#### b) Make and run from command line

    make test/mult && ./test/mult
