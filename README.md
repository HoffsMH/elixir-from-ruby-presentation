## Installing

##### 0. Erlang

Elixir is needs Erlang

```sh
brew install erlang
```

##### 1. Exenv
We should use version management for Elixir just like Ruby!

[https://github.com/exenv/exenv.git](https://github.com/exenv/exenv.git)

```sh
git clone https://github.com/exenv/exenv.git ~/.exenv
```
This will let us install any version from the command line

[http://github.com/mururu/elixir-build](http://github.com/mururu/elixir-build)

```sh
git clone git://github.com/mururu/elixir-build.git ~/.exenv/plugins/elixir-build

```

This will put exenv on our path temporarily.

```sh
export PATH="$HOME/.exenv/bin:$PATH" && export PATH="$HOME/.exenv/shims:$PATH"
```

later on you can put these 2 lines in your *rc

```sh
export PATH="$HOME/.exenv/bin:$PATH"
eval "$(exenv init -)"

```

##### 3. Grab a recent version and set it to your global default

```sh
exenv install 1.6.6 && exenv global 1.6.6 && exenv rehash
```
It will probably take a bit

```sh
elixir -v
Erlang/OTP 21 [erts-10.0.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe] [dtrace]

Elixir 1.6.6 (compiled with OTP 21)
```

### What your get out of the box

Elixir binary (you will probably never use this directly)

```sh
elixir
```

A really good repl (hit ctrl+c twice to exit)

```sh
iex
```

bundler + rake + linter + build tool combined. Versioned in parallel with language releases

```sh
mix
mix help
```

### Lets have fun

```sh
mix new example_app
```

we get something like this

```sh
example_app
├── README.md
├── config
│   └── config.exs
├── lib # most application code will go in here for any given application
│   │   # phoenix apps included 
│   └── example_app.ex
├── mix.exs # Defines the mix application. A combination of a gemspec, and gemfile
└── test
    ├── example_app_test.exs
    └── test_helper.exs
```

open `lib/example_app.ex`

```elixir 
# lib/example_app.ex
defmodule ExampleApp do
  @moduledoc """
  Documentation for ExampleApp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ExampleApp.hello
      :world

  """
  def hello do
    :world
  end
end
```

ok lets put our project in a repl

```sh
iex -S mix
```

```iex
iex(1)> Ex <press tab>
ExampleApp    Exception
iex(2)> ExampleApp.hello
:world
```
Notice the stuff above the definition of `hello` in our `lib/example_app.ex` ?
Its documentation! and It gets a VIP pass througout the language
h will display documentation

```iex
iex(3)> h ExampleApp
iex(4)> h ExampleApp.hello
```

The first thing anyone should learn how to do is how to get in the thick of things

lets define a new method on our `ExampleApp` module

```elixir
def greet(name) do
  "hello #{name}!"
end
```

lets recompile in our repl

```iex
iex(5)> recompile
Compiling 1 file (.ex)
iex(6)> ExampleApp.greet("José")
"hello José"
```

now lets debug

```elixir
def greet(name) do
  require IEx
  IEx.pry
  "hello #{name}!"
end
```

```
iex(7)> recompile
Compiling 1 file (.ex)
iex(8)> ExampleApp.greet("Chris")
Break reached: ExampleApp.greet/1 (lib/example_app.ex:21)

   19:   def greet(name) do
   20:     require IEx
   21:     IEx.pry
   22:     "hello #{name}!"
   23:   end

pry(1)> name
"Chris"
pry(2) respawn
Interactive Elixir (1.6.6) - press Ctrl+C to exit (type h() ENTER for help)
"hello Chris!"
iex(1)>
```

the term `greet` really is similar to `hello`


what are the most important things to give a solid ground from which to start
exploring the platform.
lets just start listing then prioritize


level 1

mix
  mix new
  directory structure

iex
  iex -S anything
    iex -S mix gives you repl with everything in your mix project loaded
    iex -S mix test runs test inside an iex, which allows pry
    later on iex -S mix phx.server will combine the functionality of `rails s` and `rails c`
  how stuff is loaded
    file names are not linked with module names at all
  helpers
    h -  tells you about things
    r - reload a module


language basics
  Modules
  functions
  function capturing

level 2
  basic code navigation - platform
    Code.ensure_loaded(Module)
    .module_info
    erlang access :
    :observer.start
    :debugger.start

  ExUnit


  starting concurrency







ok inspecting code
organizing code
  modules
    require
    import
    alias
    use


