# Interpreter for ARITH language

-------------------------------------------------------------------
This was done as part of a homework for CSE210A at UCSC
HW1- ARITH: lexer.h, parser.h, ast.h, main.cpp, Makefile

Authors: Rangasri Chakravarthy & Priyanka Dutta
--------------------------------------------------------------------
This project was implemented in c++.

Steps to compile:
- run 'make'

Steps to run:
- ./arith

Steps to run the tests:
- ./test.sh

Arith operations implemented:

+ (ADD), - (SUB), * (MUL), / (DIV)

Extra features added:

% (MOD), skipping extra spaces (even if there is more than 1 space between numbers and operands)

Extra test cases:

10 extra test cases have been added to support the extra features and are under 'self.bats'

Note: 

Since we were not sure if we can maintain a public git repo (since the course is ongoing), 
we were pair programming and then we pushed the code to our own private git repositories
(since we could not collaborate on private repo on GitHub).

References:

•  https://ruslanspivak.com/lsbasi-part7/

•  https://softwareengineering.stackexchange.com/questions/160675/what-do-you-call-classes-without-methods

•  For extra test cases: https://stackoverflow.com/questions/11720656/modulo-operation-with-negative-numbers

