# ruby-playground

📚 Learning and exploring the Ruby programming language.


## Overview

This repository is me learning Ruby and specifically the surrounding toolchain and basic language features. I'm reading
(or at least partially reading) the classic [Programming Ruby](https://pragprog.com/titles/ruby5/programming-ruby-3-3-5th-edition/)
book.


## Instructions

Follow these instructions to explore Ruby via various scripts and programs.

1. Pre-requisite: Ruby
   * I used Ruby 3.3.2 installed with `rbenv`
2. Run a basic script
   * ```shell
     ruby hello_world.rb 
     ```
   * The commandline and output will look something like the following.
   * ```text
     $ ruby hello_world.rb 
     
     Hello World!
     ```
3. Write Ruby interactively
   * Start an interactive Ruby REPL (irb is short for "interactive Ruby") with the following command.
   * ```shell
     irb
     ```
   * Try out some code. This is a fast way to validate your understanding of Ruby syntax and a low stakes way to try out
     some random code. Here is what my exploration looked like.
   * ```text
     ❯ irb
     irb(main):001> date
     (irb):1:in `<main>': undefined local variable or method `date' for main (NameError)
     
     date
     ^^^^
             from <internal:kernel>:187:in `loop'
             from /Users/davidgroomes/.rbenv/versions/3.3.2/lib/ruby/gems/3.3.0/gems/irb-1.13.1/exe/irb:9:in `<top (required)>'
             from /Users/davidgroomes/.rbenv/versions/3.3.2/bin/irb:25:in `load'
             from /Users/davidgroomes/.rbenv/versions/3.3.2/bin/irb:25:in `<main>'
     irb(main):002> puts
     
     => nil
     irb(main):003> puts :hi if true
     hi
     => nil
     irb(main):004> :hi.inspect
     => ":hi"
     irb(main):005> :hi.inspect.inspect
     => "\":hi\""
     irb(main):006> :hi.inspect.inspect.inspect
     => "\"\\\":hi\\\"\""
     irb(main):007> :hi.class
     => Symbol
     irb(main):008> :hi.class.inspect
     => "Symbol"
     irb(main):009> :hi.class.inspect.class
     => String
     ```
   * Try sourcing some code and using it. Use the following command from the Ruby REPL.
   * ```text
     load './Envelope.rb'
     env = Envelope.new("hello")
     env.message
     ```
     

## Wish List

General clean-ups, TODOs and things I wish to implement for this project:

* [x] DONE Let's get something running
* [ ] How does package management work? Ruby Gems of course, but what is the package manager?
   * I think I'd like to combine some toolchain/package stuff with type checking (Sorbet). I know type checking isn't
     really the spirit of Ruby but Homebrew does it and that's what I'm trying to study, plus I benefit from types once
     we expand past a small program size.
* [ ] How does modularization work in Ruby? Packages?
   * How are files discovered? Is there a search path?
* [ ] How does debugging work in Ruby? Does it have something like an agent, like the JVM does?
* [ ] What is `frozen_string_literal`?
* [x] DONE (I mostly get it. The top-level self is "main". And the really tricky part is that in class initialization,
  "self" is actually the class so that's why `def self.hello ...` is actually a class-level variable even though it
  really feels like an instance-thing) How does resolution work in general? What does `self` do? Is it implicit?


## Reference

* [rbenv](https://github.com/rbenv/rbenv)