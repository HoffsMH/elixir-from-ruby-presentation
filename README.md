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

bundler + rake + build tool combined

```sh
mix
mix help
```

### Lets have fun



what are the most important things to give a solid ground from which to start
exploring the platform.
lets just start listing then prioritize





