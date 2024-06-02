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
     
     Hello programmer 👋 You rock with 100% intensity!
     ```
   * Using Ruby directly is great for learning and writing scripts (even sophisticated ones) that use only the Ruby
     standard library and pre-installed Gems (packages). But, we eventually need to expand our program to include
     third-party packages. We do this in all programming languages. Let's jump right into Bundler and figure out how to
     manage our project and development workflow using the idiomatic Ruby toolchains.
3. Install packages
   * ```shell
     bundle install
     ```
   * This installs the packages listed in `Gemfile.lock`. We are depending on the `irb` and `debug` gems which we will
     explore next.
4. Write Ruby interactively
   * Start an interactive Ruby REPL (irb is short for "interactive Ruby") with the following command.
   * ```shell
     bundle exec irb
     ```
   * Try out some code. This is a fast way to validate your understanding of Ruby syntax and a low stakes way to try out
     some random code. Here is what my exploration looked like.
   * ```text
     $ bundle exec irb
     irb(main):001> puts :hi if true
     hi
     => nil
     irb(main):002> :hi.inspect
     => ":hi"
     irb(main):003> :hi.inspect.inspect
     => "\":hi\""
     irb(main):004> :hi.class
     => Symbol
     irb(main):005>
     ```
   * Try sourcing some code and using it. Use the following command from the Ruby REPL.
   * ```text
     load './Envelope.rb'
     env = Envelope.new("hello")
     env.message
     ```
5. Debug a program
   * ```shell
     bundle exec rdbg hello_world.rb
     ```
   * Use the power of the debugger to interactively step through the code, inspect variables and change the program
     state. My exploration looked like the following.
   * ```text
     $ bundle exec rdbg hello_world.rb
     [1, 6] in hello_world.rb
          1| # frozen_string_literal: true
          2| 
     =>   3| msg_template = "Hello %s 👋 You rock with %s%% intensity!"
          4| msg = msg_template % ['programmer', 100]
          5| 
          6| puts msg
     =>#0    <main> at hello_world.rb:3
     (rdbg) s    # step command
     [1, 6] in hello_world.rb
          1| # frozen_string_literal: true
          2| 
          3| msg_template = "Hello %s 👋 You rock with %s%% intensity!"
     =>   4| msg = msg_template % ['programmer', 100]
          5| 
          6| puts msg
     =>#0    <main> at hello_world.rb:4
     (ruby) msg_template = "Hello from the debugger"
     "Hello from the debugger"
     (rdbg) c    # continue command
     Hello from the debugger
     ```
     
   

## Wish List

General clean-ups, TODOs and things I wish to implement for this project:

* [x] DONE Let's get something running
* [x] DONE (interestingly, Bundler comes pre-installed with Ruby these days) How does package management work? Ruby Gems of course, but what is the package manager?
   * I think I'd like to combine some toolchain/package stuff with type checking (Sorbet). I know type checking isn't
     really the spirit of Ruby but Homebrew does it and that's what I'm trying to study, plus I benefit from types once
     we expand past a small program size.
   * DONE (you have to make it yourself. Perfectly fine.) Init a Gemfile
   * DONE (`bundle add debug --version '1.9.2'`) Add 'debug' to the Gemfile
   * DONE Add instructions for bundle install and running hello_world.rb with a specific version of irb.
* [ ] How does modularization work in Ruby? Packages?
   * How are files discovered? Is there a search path?
* [x] DONE How does debugging work in Ruby? Does it have something like an agent, like the JVM does?
* [ ] What is `frozen_string_literal`?
* [x] DONE (I mostly get it. The top-level self is "main". And the really tricky part is that in class initialization,
  "self" is actually the class so that's why `def self.hello ...` is actually a class-level variable even though it
  really feels like an instance-thing) How does resolution work in general? What does `self` do? Is it implicit?


## Reference

* [rbenv](https://github.com/rbenv/rbenv)
