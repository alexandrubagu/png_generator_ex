defmodule PngGeneratorTest do
  use ExUnit.Case
  doctest PngGenerator

  test "greets the world" do
    assert PngGenerator.hello() == :world
  end
end
