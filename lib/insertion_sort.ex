defmodule InsertionSort do
  def insert_elem([head | []]), do: [head]
  def insert_elem([elem | sorted_list]) do
    [min | rest] = sorted_list

    cond do
      elem <= min ->
        [elem | sorted_list]
      true ->
        [min | insert_elem([elem | rest])]
    end
  end

  def sort([]), do: []
  def sort([_ | []] = list), do: insert_elem(list)
  def sort([head | tail]) do
    sorted_tail = sort(tail)
    insert_elem([head | sorted_tail])
  end
end
