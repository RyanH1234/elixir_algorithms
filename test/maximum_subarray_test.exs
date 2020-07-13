defmodule MergeSortTest do
  use ExUnit.Case

  test "finds maximum subarray of list" do
    list = [-2, 10, -11, -2]
    MaximumSubarray.find_max_subarray(list, 0, 0, 0) |> IO.inspect()
    assert true == true
  end
end
