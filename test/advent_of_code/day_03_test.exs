defmodule AdventOfCode.Day03Test do
  use ExUnit.Case

  import AdventOfCode.Day03

  test "analyze" do
    assert analyze({"PnJJfVPBcfVnnPnBFF", "cggttrtgCrjDtSjzSS"}) == 3
  end

  test "part1" do
    input = AdventOfCode.Input.get!(3,2022)
    result = part1(input)

    assert result == 7875
  end

  test "badge" do
    assert badge(["vJrwpWtwJgWrhcsFMMfFFhFp","jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL","PmmdzqPrVvPwwTWBwg"]) == 18
  end

  test "part2" do
    input = AdventOfCode.Input.get!(3,2022)
    result = part2(input)

    assert result == 2479
  end
end
