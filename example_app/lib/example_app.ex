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
    :worldok
  end

  def greet(name) do
    require IEx
    IEx.pry
    "hello #{name}!"
  end
end
