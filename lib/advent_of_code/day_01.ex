defmodule AdventOfCode.Day01 do

  def calc_elf_pack(elf) do
    elf
    |> String.split("\n")
    |> Enum.map(fn x -> x |> String.to_integer() end)
    |> Enum.sum()
  end

  defp split_into_elves(input) do
    input |> String.trim() |> String.split("\n\n")
  end

  def part1(args) do
    args
    |> split_into_elves()
    |> Enum.map(fn x -> x |> AdventOfCode.Day01.calc_elf_pack() end)
    |> Enum.max()
  end

  def part2(args) do
    args
    |> split_into_elves()
    |> Enum.map(fn x -> x |> AdventOfCode.Day01.calc_elf_pack() end)
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
  end
end
