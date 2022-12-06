defmodule AdventOfCode.Day06 do

  def part1(args), do: part1(String.to_charlist(args),0)
  def part1([a , b , c , d | rest],count) do
    cond do
      a != b and a != c and a != d and b != c and b != d and c != d -> count + 4
      true -> part1([b,c,d,hd(rest) | tl(rest)],count+1)
    end
  end

  def part2(args), do: part2(String.to_charlist(args),0)
  def part2(lst,count) do
    cond do
      lst |> Enum.take(14) |> MapSet.new() |> MapSet.size() == 14 -> count + 14
      true -> part2(tl(lst),count+1)
    end
  end
end
