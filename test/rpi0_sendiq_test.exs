defmodule Rpi0SendiqTest do
  use ExUnit.Case
  doctest Rpi0Sendiq

  test "greets the world" do
    assert Rpi0Sendiq.hello() == :world
  end
end
