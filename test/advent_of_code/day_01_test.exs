defmodule AdventOfCode.Day01Test do
  use ExUnit.Case

  import AdventOfCode.Day01

  test "calc elf pack" do
    result = calc_elf_pack("1\n2\n3")
    assert result == 6
  end

  test "part1" do
    input = AdventOfCode.Input.get!(1,2022)
    result = part1(input)

    assert result == 69310
  end

  test "part2" do
    input = AdventOfCode.Input.get!(1,2022)
    result = part2(input)

    assert result == 206104
  end
end
