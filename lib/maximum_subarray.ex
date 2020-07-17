defmodule MaximumSubarray do

  def find_max_subarray([], _acc, max_sum, max_index), do: { max_index, max_sum }
  def find_max_subarray(list, acc, max_sum, max_index) do
    [{val, index} | tail] = list
    updated_acc = val + acc
    case updated_acc > max_sum do
      true ->
        find_max_subarray(tail, updated_acc, updated_acc, index)
      _ ->
        find_max_subarray(tail, updated_acc, max_sum, max_index)
    end
  end

  def do_search(list) do
    list_i = Enum.with_index(list)
    midpoint = round(length(list_i)/2)
    {lhs, rhs} = Enum.split(list_i, midpoint)

    {lhs_index, lhs_sum} = find_max_subarray(lhs, 0, 0, 0)
    {rhs_index, rhs_sum} = find_max_subarray(rhs, 0, 0, 0)

    lhs_reversed = Enum.reverse(lhs)
    {cross_lhs_index, cross_lhs_sum} = find_max_subarray(lhs_reversed, 0, 0, 0)
    cross_sum = cross_lhs_sum + rhs_sum

    cond do
      lhs_sum >= rhs_sum and lhs_sum >= cross_sum ->
        {0, lhs_index, lhs_sum}
      rhs_sum > lhs_sum and rhs_sum >= cross_sum ->
        {length(lhs), rhs_index, rhs_sum}
      true ->
        {cross_lhs_index, rhs_index, cross_sum}
    end
  end
end
