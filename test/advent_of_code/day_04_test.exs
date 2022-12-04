defmodule AdventOfCode.Day04Test do
  use ExUnit.Case

  import AdventOfCode.Day04



  test "parse assignment" do
    assert parse_assignment("61-78") == [61,78]
    assert String.split("61-78","-") == ["61","78"]
    assert String.to_integer("61") == 61
    assert Enum.map(["61","78"],fn x -> String.to_integer(x) end) == [61,78]
  end



  test "part1" do
    input = AdventOfCode.Input.get!(4,2022)
    result = part1(parse(input))

    assert result == 644
  end

  test "part2" do
    input = AdventOfCode.Input.get!(4,2022)
    result = part2(parse(input))

    assert result == 926
  end
end
