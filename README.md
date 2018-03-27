# String Matcher

Balancing brackets correctly in a program is one of the most difficult problems facing programmers today. This a matching bracket checker. Written in Ruby. 

## Description

The idea behind this is that any { in a piece of code should be matched with a }. This is a fundamental feature in most IDEs and compilers. The idea should extend to [], as well as making sure that quotation marks always have a complete pair. 

Any brackets between quotations will be ignored and treated as quoted material. This is done using regex to remove any text written between quotation marks. 

## Getting Started

Run the program with 

```python3 matched.rb``` 

Input a string to be checked for correct matching brackets. 
 
## Execution

Example executions:
- ``` (some [text ) more text ] ``` returns false
- ``` {this (is [a "valid"] input) string} ``` returns true
- ``` (something "quoted text)" ``` returns false
- ``` This "is (ok" ``` returns true
- ``` "So ] is { this" ``` returns true
