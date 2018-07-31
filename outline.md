ok we just created an app and opened a repl
  - data types (language is dynamic but type description and static analysis is a feature)
    numbers are just numbers
      - the math is boring
    strings/binary
    charlist are not strings
    atoms => ruby Symbols Ab.Cd is a single atom
      not garbage collected
    [list] = ruby array linked list
      rest spread syntax
    {tuple} => ordered like array but contiguous in memory
    %{map} => ruby hash
      rest speard syntax
  - pattern matching

  - Code organization - open `lib/example_app.ex`
    modules are defined with defmodule then an atom
    there is no inheritance
  - debugging - pry
  - documentation
    - doc tests - tests in general
    - doc generation
      ex_doc 0.17.0
    - how to find docs easily on hex.pm
  - greet vs hello
  - function capturing
  - hello is greet
    - 2 greets?!?
  - one for grandma - pattern matching
  - greeting groups with Enum
    - without function capturing
    - with function capturing
    - with pipe operator
  - convienence
    - require - load files with relative file names
    - alias - want to skip to the last namespace
    - import - files are loaded and you want to use every function on namespace
    - use - beware meta programming here - integral to code org and web framework but should learn about it later
    - attributes - module wide
  - recursion is efficient
    - pattern matching with cons operator
    - notice what the program now does without a single if statement

  - questions/directions to steer in
    - concurrency
      - benchmarking
    - testing
    - the web
      - plug
  


