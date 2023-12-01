defmodule DayXXTest do
  use ExUnit.Case

  @input """
  test input
  test test
  """

  test "Example solution part 1" do
    assert DayXX.solve1(@input) == :test
  end

  test "Example solution part 2" do
    assert DayXX.solve2(@input) == :test
  end
end
