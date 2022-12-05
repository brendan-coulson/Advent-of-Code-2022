defmodule AdventOfCode.Day05Test do
  use ExUnit.Case

  import AdventOfCode.Day05

  def stacks() do
    %{'1' => ['G','P','N','R'],
    '2' =>  ['H','V', 'S','C','L','B','J','T'],
    '3' => ['L','N','M','B','D','T'],
    '4' => ['B','S','P','V','R'],
    '5' => ['H','V','M','W','S','Q','C','G'],
    '6' => ['J','B','D','C','S','Q','W'],
    '7' => ['L','Q','F'],
    '8' => ['V','F','L','D','T','H','M','W'],
    '9' => ['F','J','M','V','B','P','L']}
  end

  test "push stack" do
    result = push_stack(['G','P','N','R'],['A'])
    assert result == ['A','G','P','N','R']
    result = push_stack(['G','P','N','R'],['A','B'])
    assert result == ['B','A','G','P','N','R']
  end

  test "pop stack" do
    result = pop_stack(['G','P','N','R'],1)
    assert result = [['P','N','R'],['G']]
    result = pop_stack(['G','P','N','R'],2)
    assert result = [['N','R'],['G','P']]
  end

  test "apply move" do
    result = apply_move(stacks(),[1,'1','2'])

    assert result['1'] == ['P','N','R']
    assert result['2'] == ['G','H','V', 'S','C','L','B','J','T']

    result = apply_move(stacks(),[3,'1','2'])
    assert result['1'] == ['R']
    assert result['2'] == ['N','P','G','H','V', 'S','C','L','B','J','T']
  end


  test "part1" do
    input = AdventOfCode.Input.get!(5,2022)
    result = part1([stacks(),moves()])

    #assert result == ['H', 'B', 'T', 'M', 'T', 'B', 'S', 'D', 'C']
  end

  test "part2" do
    result = part1([stacks(),moves()])

    assert result == ['P', 'Q', 'T', 'J', 'R', 'S', 'H', 'W', 'S']
  end


  def moves() do
    [[3,'3','7'],
    [4,'1','9'],
    [5,'6','3'],
    [6,'9','8'],
    [2,'9','5'],
    [4,'3','7'],
    [1,'3','6'],
    [3,'5','7'],
    [1,'2','1'],
    [4,'7','8'],
    [17,'8','7'],
    [1,'6','2'],
    [2,'6','7'],
    [1,'8','3'],
    [2,'4','6'],
    [3,'9','6'],
    [5,'6','3'],
    [5,'2','1'],
    [9,'3','4'],
    [20,'7','3'],
    [7,'5','3'],
    [6,'3','5'],
    [4,'1','9'],
    [4,'5','6'],
    [2,'1','8'],
    [2,'7','3'],
    [3,'6','3'],
    [2,'5','8'],
    [2,'9','3'],
    [1,'9','6'],
    [2,'2','4'],
    [26,'3','4'],
    [28,'4','6'],
    [8,'6','1'],
    [4,'8','6'],
    [1,'9','3'],
    [2,'3','6'],
    [1,'3','9'],
    [26,'6','9'],
    [2,'7','3'],
    [5,'1','4'],
    [1,'1','4'],
    [1,'6','5'],
    [1,'2','5'],
    [2,'3','7'],
    [2,'5','8'],
    [10,'4','5'],
    [1,'6','1'],
    [1,'8','5'],
    [2,'7','2'],
    [4,'4','3'],
    [4,'7','2'],
    [2,'1','8'],
    [12,'9','2'],
    [5,'2','3'],
    [3,'3','1'],
    [1,'1','7'],
    [6,'3','8'],
    [1,'5','3'],
    [10,'9','1'],
    [7,'8','7'],
    [1,'3','9'],
    [7,'7','2'],
    [3,'2','9'],
    [6,'2','9'],
    [5,'9','1'],
    [7,'2','1'],
    [21,'1','7'],
    [2,'1','2'],
    [5,'2','3'],
    [2,'4','3'],
    [10,'5','4'],
    [11,'4','7'],
    [5,'3','1'],
    [1,'4','2'],
    [2,'8','3'],
    [7,'9','3'],
    [3,'9','1'],
    [9,'7','9'],
    [1,'3','4'],
    [3,'9','4'],
    [5,'9','3'],
    [4,'3','8'],
    [22,'7','8'],
    [10,'3','5'],
    [1,'9','4'],
    [8,'1','5'],
    [3,'4','9'],
    [1,'3','6'],
    [2,'1','7'],
    [1,'4','3'],
    [1,'4','7'],
    [1,'2','1'],
    [1,'6','9'],
    [1,'3','7'],
    [1,'1','7'],
    [4,'9','3'],
    [22,'8','5'],
    [37,'5','9'],
    [37,'9','6'],
    [3,'7','9'],
    [2,'8','6'],
    [1,'9','3'],
    [2,'5','1'],
    [1,'2','5'],
    [7,'6','4'],
    [18,'6','2'],
    [1,'3','7'],
    [1,'5','4'],
    [1,'8','5'],
    [9,'2','5'],
    [3,'4','6'],
    [2,'2','7'],
    [5,'2','3'],
    [1,'8','1'],
    [1,'9','4'],
    [2,'7','8'],
    [7,'3','7'],
    [3,'1','3'],
    [1,'9','5'],
    [17,'6','2'],
    [12,'7','9'],
    [1,'4','8'],
    [1,'8','4'],
    [4,'5','2'],
    [2,'8','9'],
    [3,'4','2'],
    [3,'3','7'],
    [2,'4','3'],
    [8,'9','1'],
    [1,'4','2'],
    [24,'2','1'],
    [6,'5','1'],
    [1,'7','4'],
    [3,'2','8'],
    [3,'3','7'],
    [1,'4','6'],
    [2,'8','5'],
    [3,'9','4'],
    [1,'5','3'],
    [1,'3','5'],
    [3,'9','8'],
    [1,'5','7'],
    [5,'7','9'],
    [2,'8','4'],
    [1,'3','2'],
    [1,'7','3'],
    [1,'8','5'],
    [1,'2','9'],
    [1,'6','2'],
    [2,'9','8'],
    [1,'3','7'],
    [24,'1','3'],
    [1,'7','6'],
    [3,'5','1'],
    [1,'4','3'],
    [1,'8','6'],
    [1,'6','4'],
    [1,'5','4'],
    [1,'8','5'],
    [1,'5','7'],
    [1,'2','5'],
    [1,'6','3'],
    [1,'4','9'],
    [1,'5','7'],
    [2,'9','2'],
    [3,'4','8'],
    [2,'4','3'],
    [11,'1','9'],
    [7,'9','1'],
    [9,'1','9'],
    [1,'3','7'],
    [3,'7','4'],
    [2,'2','6'],
    [2,'4','1'],
    [1,'6','7'],
    [22,'3','7'],
    [1,'3','5'],
    [1,'5','2'],
    [1,'6','7'],
    [5,'1','9'],
    [1,'8','5'],
    [1,'2','1'],
    [15,'9','4'],
    [6,'9','6'],
    [14,'4','1'],
    [5,'6','2'],
    [1,'5','1'],
    [9,'1','4'],
    [5,'1','3'],
    [3,'2','6'],
    [2,'8','1'],
    [5,'1','9'],
    [10,'7','8'],
    [3,'3','8'],
    [2,'8','7'],
    [5,'4','9'],
    [3,'3','5'],
    [1,'6','9'],
    [1,'3','9'],
    [1,'3','6'],
    [1,'3','7'],
    [2,'6','9'],
    [2,'4','1'],
    [13,'9','8'],
    [2,'1','4'],
    [6,'4','9'],
    [1,'6','2'],
    [1,'2','3'],
    [3,'5','3'],
    [4,'3','2'],
    [7,'9','2'],
    [1,'6','4'],
    [4,'2','5'],
    [2,'2','1'],
    [4,'5','8'],
    [1,'4','2'],
    [6,'2','1'],
    [2,'2','1'],
    [22,'8','2'],
    [16,'7','4'],
    [14,'2','7'],
    [7,'8','2'],
    [4,'7','1'],
    [14,'2','1'],
    [10,'7','1'],
    [1,'7','3'],
    [1,'3','4'],
    [1,'2','5'],
    [25,'1','5'],
    [1,'5','3'],
    [4,'4','2'],
    [13,'4','6'],
    [4,'2','1'],
    [3,'6','2'],
    [9,'1','2'],
    [22,'5','4'],
    [1,'2','7'],
    [8,'1','5'],
    [1,'4','5'],
    [15,'4','3'],
    [11,'2','1'],
    [1,'7','3'],
    [2,'5','1'],
    [13,'3','5'],
    [10,'6','7'],
    [1,'3','4'],
    [1,'3','6'],
    [1,'3','9'],
    [1,'9','5'],
    [1,'6','2'],
    [6,'4','9'],
    [1,'3','7'],
    [1,'5','1'],
    [3,'5','6'],
    [1,'4','3'],
    [12,'5','6'],
    [1,'2','8'],
    [4,'1','7'],
    [1,'3','2'],
    [1,'2','6'],
    [9,'6','4'],
    [1,'8','7'],
    [3,'1','2'],
    [2,'2','5'],
    [5,'4','6'],
    [1,'4','6'],
    [6,'7','3'],
    [6,'5','7'],
    [12,'7','4'],
    [1,'2','8'],
    [6,'9','5'],
    [1,'8','9'],
    [1,'3','6'],
    [4,'4','1'],
    [1,'7','9'],
    [4,'4','6'],
    [2,'9','7'],
    [7,'5','1'],
    [3,'1','4'],
    [4,'3','1'],
    [10,'6','9'],
    [1,'3','5'],
    [8,'4','6'],
    [2,'5','2'],
    [4,'7','4'],
    [1,'5','9'],
    [5,'4','7'],
    [1,'4','8'],
    [2,'2','6'],
    [1,'5','3'],
    [4,'9','6'],
    [11,'6','8'],
    [1,'1','4'],
    [1,'4','1'],
    [1,'3','1'],
    [10,'1','4'],
    [3,'9','5'],
    [1,'9','3'],
    [2,'7','4'],
    [3,'9','4'],
    [3,'5','8'],
    [1,'3','5'],
    [15,'8','2'],
    [8,'1','4'],
    [2,'1','2'],
    [10,'2','3'],
    [1,'5','7'],
    [3,'7','8'],
    [10,'3','5'],
    [4,'4','2'],
    [7,'4','1'],
    [2,'7','4'],
    [1,'8','9'],
    [5,'1','6'],
    [13,'6','2'],
    [2,'1','4'],
    [15,'4','5'],
    [1,'9','3'],
    [1,'3','4'],
    [2,'8','3'],
    [20,'2','6'],
    [3,'2','8'],
    [2,'3','8'],
    [9,'5','2'],
    [6,'5','9'],
    [2,'4','1'],
    [8,'5','4'],
    [2,'8','1'],
    [5,'9','5'],
    [3,'5','7'],
    [1,'8','2'],
    [2,'4','1'],
    [14,'6','4'],
    [2,'1','8'],
    [5,'6','3'],
    [3,'1','6'],
    [5,'3','2'],
    [1,'9','6'],
    [8,'6','2'],
    [2,'7','4'],
    [1,'1','3'],
    [2,'5','8'],
    [5,'4','3'],
    [2,'5','3'],
    [1,'7','5'],
    [4,'4','3'],
    [2,'4','2'],
    [1,'3','7'],
    [5,'3','7'],
    [1,'7','3'],
    [3,'3','2'],
    [1,'5','9'],
    [2,'7','9'],
    [1,'9','5'],
    [1,'5','3'],
    [10,'4','9'],
    [3,'3','9'],
    [27,'2','5'],
    [3,'8','3'],
    [2,'2','6'],
    [4,'9','7'],
    [5,'3','8'],
    [5,'7','3'],
    [25,'5','1'],
    [3,'9','8'],
    [1,'3','2'],
    [1,'5','3'],
    [2,'7','9'],
    [10,'8','7'],
    [1,'2','3'],
    [13,'1','7'],
    [3,'9','7'],
    [3,'3','1'],
    [1,'5','8'],
    [2,'8','6'],
    [4,'6','5'],
    [4,'5','6'],
    [1,'4','6'],
    [23,'7','9'],
    [2,'6','8'],
    [28,'9','1'],
    [1,'8','1'],
    [3,'7','3'],
    [1,'9','4'],
    [3,'3','6'],
    [3,'3','4'],
    [6,'6','8'],
    [12,'1','7'],
    [9,'1','6'],
    [3,'6','3'],
    [2,'4','7'],
    [4,'8','7'],
    [1,'8','5'],
    [1,'8','4'],
    [8,'1','7'],
    [1,'3','4'],
    [1,'8','3'],
    [3,'7','5'],
    [9,'1','3'],
    [3,'6','5'],
    [3,'1','7'],
    [4,'4','2'],
    [3,'1','4'],
    [4,'2','8'],
    [1,'6','2'],
    [3,'5','6'],
    [4,'8','5'],
    [9,'7','6'],
    [12,'7','1'],
    [5,'7','3'],
    [1,'9','7'],
    [1,'2','9'],
    [1,'9','4'],
    [7,'6','3'],
    [5,'6','2'],
    [1,'7','6'],
    [3,'6','1'],
    [2,'4','9'],
    [7,'5','8'],
    [2,'9','4'],
    [1,'5','8'],
    [4,'4','1'],
    [11,'1','7'],
    [8,'3','1'],
    [8,'8','6'],
    [3,'3','5'],
    [5,'6','1'],
    [2,'1','2'],
    [6,'2','3'],
    [2,'6','7'],
    [3,'5','4'],
    [7,'3','9'],
    [5,'9','5'],
    [3,'4','3'],
    [4,'5','2'],
    [2,'9','4'],
    [6,'1','9'],
    [1,'6','9'],
    [7,'7','1'],
    [1,'7','3'],
    [2,'4','5'],
    [1,'9','1'],
    [4,'2','3'],
    [2,'5','2'],
    [9,'3','1'],
    [3,'2','4'],
    [28,'1','6'],
    [2,'1','3'],
    [17,'6','3'],
    [2,'9','5'],
    [2,'6','7'],
    [1,'5','7'],
    [1,'9','4'],
    [5,'6','9'],
    [14,'3','5'],
    [15,'5','9'],
    [1,'4','9'],
    [1,'5','6'],
    [1,'4','1'],
    [11,'3','6'],
    [1,'1','6'],
    [12,'6','8'],
    [4,'9','7'],
    [20,'9','4'],
    [18,'4','5'],
    [6,'5','8'],
    [12,'8','2'],
    [2,'2','6'],
    [1,'5','2'],
    [4,'4','8'],
    [5,'5','9'],
    [4,'3','6'],
    [1,'3','8'],
    [7,'7','8'],
    [10,'2','8'],
    [1,'6','3'],
    [10,'6','5'],
    [10,'5','2'],
    [2,'7','5'],
    [9,'2','1'],
    [27,'8','9'],
    [2,'2','7'],
    [9,'1','2'],
    [1,'5','3'],
    [9,'2','1'],
    [1,'8','7'],
    [2,'1','3'],
    [19,'9','1'],
    [5,'5','1'],
    [3,'9','2'],
    [2,'3','9'],
    [1,'3','4'],
    [5,'7','4'],
    [1,'7','3'],
    [17,'1','2'],
    [1,'5','3'],
    [9,'9','5'],
    [2,'1','2'],
    [1,'4','9'],
    [2,'4','6'],
    [1,'4','7'],
    [6,'1','8']]
  end

end
