# String Matcher

Balancing brackets in a program correctly is one of the most difficult problems facing programmers today. This is the beginning stages of a text editor / IDE implementation of a bracket matching checker. Written in Ruby. 

## Getting Started

Run the program with ```python3 matched.rb``` and input a string to be checked for correct matching brackets. 

Any brackets between quotations will be ignored and treated as quoted material.
 
## Running Program

Example executions:
- ``` (some [text ) more text ] ``` returns false
- ``` {this (is [a "valid"] input) string} ``` returns true
- ``` (something "quoted text)" ``` returns false
- ``` This "is (ok" ``` returns true
- ``` "So ] is { this" ``` returns true
