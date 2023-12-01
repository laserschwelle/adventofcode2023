defmodule Day01Test do
  use ExUnit.Case

  @input1 """
  1abc2
  pqr3stu8vwx
  a1b2c3d4e5f
  treb7uchet
  """

  @input2 """
  two1nine
  eightwothree
  abcone2threexyz
  xtwone3four
  4nineeightseven2
  zoneight234
  7pqrstsixteen
  """

  test "Parse number" do
    assert Day01.find_number("1abc2") == 12
    assert Day01.find_number("pqr3stu8vwx") == 38
    assert Day01.find_number("a1b2c3d4e5f") == 15
    assert Day01.find_number("treb7uchet") == 77
  end

  test "Parse digit" do
    assert Day01.parse_digit("four") == "4"
    assert Day01.parse_digit("six") == "6"
  end

  test "Parse spelled out number" do
    assert Day01.find_spelled_number("two1nine") == 29
    assert Day01.find_spelled_number("eightwothree") == 83
    assert Day01.find_spelled_number("abcone2threexyz") == 13
    assert Day01.find_spelled_number("xtwone3four") == 24
    assert Day01.find_spelled_number("4nineeightseven2") == 42
    assert Day01.find_spelled_number("zoneight234") == 14
    assert Day01.find_spelled_number("7pqrstsixteen") == 76
    assert Day01.find_spelled_number("eighthree") == 83
  end

  test "Example solution part 1" do
    assert Day01.solve1(@input1) == 142
  end

  test "Example solution part 2" do
    assert Day01.solve2(@input2) == 281
  end
end
