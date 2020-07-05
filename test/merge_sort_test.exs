defmodule MergeSortTest do
  use ExUnit.Case

  test "merge doubling lists" do
    list1 = [1, 3, 5]
    list2 = [2, 4, 6]

    expected = [1, 2, 3, 4, 5, 6]
    actual = MergeSort.merge(list1, list2)

    assert expected == actual
  end

  test "merge sequential lists" do
    list1 = [1, 2, 3]
    list2 = [4, 5, 6]

    expected = [1, 2, 3, 4, 5, 6]
    actual = MergeSort.merge(list1, list2)

    assert expected == actual
  end

  test "merge empty lists" do
    list1 = []
    list2 = []

    expected = []
    actual = MergeSort.merge(list1, list2)

    assert expected == actual
  end

  test "merge sort with multiple elements" do
    list = [12, 11, 10, 1, 2, 5, 13, 11]

    expected = [1, 2, 5, 10, 11, 11, 12, 13]
    actual = MergeSort.merge_sort(list)

    assert expected == actual
  end

  test "merge sort with odd no. of elements" do
    list = [12, 11, 10, 1, 2, 5, 13]

    expected = [1, 2, 5, 10, 11, 12, 13]
    actual = MergeSort.merge_sort(list)

    assert expected == actual
  end

end
