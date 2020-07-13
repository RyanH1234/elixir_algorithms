defmodule MaximumSubarray do

  def find_max_subarray([], _acc, max_sum, index), do: { index, max_sum }
  def find_max_subarray(list, acc, max_sum, index) do
    [head | tail] = list
    updated_acc = head + acc

    case updated_acc > max_sum do
      true ->
        find_max_subarray(tail, updated_acc, head + acc, index + 1)
      _ ->
        find_max_subarray(tail, updated_acc, max_sum, index)
    end
  end

  def find_max_crossing_subarray(list) do
    midpoint = round(length(list)/2)
    {lhs, rhs} = Enum.split(list, midpoint)

    {lhs_index, lhs_sum} =
      lhs
      |> Enum.reverse()
      |> find_max_subarray(0, 0, 0)

    lhs_index = length(lhs) - lhs_index

    {rhs_index, rhs_sum} = find_max_subarray(rhs, 0, 0, 0)

    {lhs_index, rhs_index, lhs_sum + rhs_sum}
  end
end
