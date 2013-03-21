# Algorithm Tester

This enables you to test algorithms written in any language, against a dataset and a trivial ruby implementation of the algorithm.
It can be extended to support input/output dataset when trivial implimentation is not available.

## How to run

* Replace code in file ```algo``` for your algorithm. This is a shell script file in your langauge of choosing. You should use first command line argument as input and only output the result and nothing else

* trivial.rb contains a trivial but correct implementation of the algorithm in ruby. Just implement the run method which takes input as argument and returns output

* File data contains 1000 sample inputs

* Once you've set everything up run ```rspec```

* For html output, just run - ```rspec --format html -o results.html```
