defmodule Day01 do
  @moduledoc false

  def find_number(line) do
    digits = line
    |> String.graphemes()
    |> Enum.filter(fn x -> Regex.match?(~r/\d/, x) end)

    {num, _} = List.first(digits) <> List.last(digits)
    |> Integer.parse()

    num
  end

  def parse_digit(num) do
    case num do
      "one"   -> "1"
      "two"   -> "2"
      "three" -> "3"
      "four"  -> "4"
      "five"  -> "5"
      "six"   -> "6"
      "seven" -> "7"
      "eight" -> "8"
      "nine"  -> "9"
      _       -> num
    end
  end

  def find_spelled_number(line) do
    # Lookahead capture to account for overlapping number, e.g. eighthree
    digits = Regex.scan(~r/(?=(\d|one|two|three|four|five|six|seven|eight|nine|ten))/, line)
    |> List.flatten()
    |> Enum.filter(fn x -> x != "" end) # remove lookahead weirdness
    |> Enum.map(&parse_digit(&1))
    {num, _}= List.first(digits) <> List.last(digits)
              |> Integer.parse()
    num
  end

  def solve1(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&find_number(&1))
    |> Enum.sum()
  end

  def solve2(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&find_spelled_number(&1))
    |> Enum.sum()
  end
end

defmodule Mix.Tasks.Day01 do
  use Mix.Task

  def run(_) do
    {:ok, input} = File.read("input/day01.txt")
    IO.puts("Part1: #{Day01.solve1(input)}")
    IO.puts("Part2: #{Day01.solve2(input)}")
  end
end
