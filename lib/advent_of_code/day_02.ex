defmodule AdventOfCode.Day02 do


  def part1(args) do
    scores = %{"A X" => 4, "A Y" => 8, "A Z" => 3,"B X" => 1, "B Y" => 5, "B Z" => 9, "C X" => 7, "C Y" => 2, "C Z" => 6}
    args |> String.trim() |> String.split("\n") |> Enum.map(fn x -> scores[x] end) |> Enum.sum()
  end

  def part2(args) do
    scores = %{"A X" => 3, "A Y" => 4, "A Z" => 8,"B X" => 1, "B Y" => 5, "B Z" => 9, "C X" => 2, "C Y" => 6, "C Z" => 7}
    args |> String.trim() |> String.split("\n") |> Enum.map(fn x -> scores[x] end) |> Enum.sum()
  end
end
