defmodule DayXX do
  @moduledoc false

  def solve1(_input) do
    :test
  end

  def solve2(_input) do
    :test
  end
end

defmodule Mix.Tasks.DayXX do
  use Mix.Task

  def run(_) do
    {:ok, input} = File.read("input/day04_input.txt")

    IO.puts("Part1: #{DayXX.solve1(input)}")
    IO.puts("Part2: #{DayXX.solve2(input)}")
  end
end
