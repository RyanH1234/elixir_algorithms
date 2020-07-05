defmodule InsertionSortTest do
  use ExUnit.Case

  test "insertion sort on empty list" do
    list = []

    expected = list
    actual = InsertionSort.sort(list)

    assert expected == actual
  end

  test "insertion sort on list of size one" do
    list = [1]

    expected = list
    actual = InsertionSort.sort(list)

    assert expected == actual
  end

  test "insertion sort on list of size greater than one" do
    list = [5, 7, 9, 10, 3, 1, 2]

    expected = [1, 2, 4, 5, 7, 8, 10]
    actual = InsertionSort.sort(expected)

    assert expected == actual
  end
end
