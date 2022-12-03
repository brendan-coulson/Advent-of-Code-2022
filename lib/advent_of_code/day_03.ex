defmodule AdventOfCode.Day03 do


  def analyze({left, right}) do
    ul = left |> String.to_charlist() |> MapSet.new()
    ur = right |> String.to_charlist() |> MapSet.new()
    [c] = MapSet.intersection(ul,ur) |> MapSet.to_list
    if c > 96 do
      c - 96
    else
      c - 38
    end
  end

  def part1(args) do
    args
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(fn x -> String.split_at(x,div(String.length(x),2)) end)
    |> Enum.map(fn x -> analyze(x) end)
    |> Enum.sum()
  end

  def threes([]), do: []
  def threes(lst) do
    [Enum.take(lst,3) | threes(Enum.drop(lst,3))]
  end

  def badge([a,b,c]) do
    as = a |> String.to_charlist() |> MapSet.new()
    bs = b |> String.to_charlist() |> MapSet.new()
    cs = c |> String.to_charlist() |> MapSet.new()

    [d] = MapSet.intersection(as,bs) |> MapSet.intersection(cs) |> MapSet.to_list()
    if d > 96 do
      d - 96
    else
      d - 38
    end
  end

  def part2(args) do
    args
    |> String.trim()
    |> String.split("\n")
    |> threes()
    |> Enum.map(fn x -> badge(x) end)
    |> Enum.sum()
  end
end
