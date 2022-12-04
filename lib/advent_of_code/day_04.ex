defmodule AdventOfCode.Day04 do

  def parse(input) do
    input
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(fn x -> parse_line(x) end)
  end
  def parse_line(line) do
    [left,right | _] = String.split(line,",")
    [parse_assignment(left),parse_assignment(right)]
  end
  def parse_assignment(assign) do
    assign
    |> String.split("-")
    |> Enum.map(fn x -> String.to_integer(x) end)
  end

  def analyse1([[la,lb],[ra,rb]]) do
    cond do
      la >= ra and lb <= rb -> 1
      ra >= la and rb <= lb -> 1
      true -> 0
    end
  end

  def analyse2([[la,lb],[ra,rb]]) do
    cond do
      la >= ra and la <= rb -> 1
      lb >= ra and lb <= rb -> 1
      ra >= la and ra <= lb -> 1
      rb >= la and rb <= lb -> 1
      true -> 0
    end
  end

  def part1(args) do
    args
    |> Enum.map(fn x -> analyse1(x) end)
    |> Enum.sum()
  end

  def part2(args) do
    args
    |> Enum.map(fn x -> analyse2(x) end)
    |> Enum.sum()
  end
end
