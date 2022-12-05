defmodule AdventOfCode.Day05 do

  def push_stack(stack,[]), do: stack
  def push_stack(stack,items) do
    #push_stack([hd(items) | stack],tl(items)) #<-- part 1
    [hd(items) | push_stack(stack,tl(items))] #<-- part 2
  end

  def pop_stack(stack,count), do: [Enum.take(stack,count), Enum.drop(stack,count)]



  def apply_move(stacks,[count,source,dest]) do
    [popped,stack] = pop_stack(stacks[source],count)
    pushed = push_stack(stacks[dest],popped)
    s = %{stacks | source => stack}
    %{s | dest => pushed}
  end

  def apply_moves(stacks,[]), do: stacks
  def apply_moves(stacks,moves) do
    apply_moves(apply_move(stacks,hd(moves)),tl(moves))
  end

  def part1([stacks,moves]) do
    result = apply_moves(stacks,moves)
    [hd(result['1']),hd(result['2']),hd(result['3']),hd(result['4']),hd(result['5']),hd(result['6']),hd(result['7']),hd(result['8']),hd(result['9'])]
  end

  def part2(_args) do
  end
end
