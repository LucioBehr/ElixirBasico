defmodule ElixirExBasicosTest do
  use ExUnit.Case
  doctest ElixirExBasicos

  test "greets the world" do
    assert ElixirExBasicos.hello() == :world
  end
end
