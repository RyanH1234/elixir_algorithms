defmodule MaximumSubarrayTest do
  use ExUnit.Case

  test "find maximum subarray of even sized list" do
    list = [1, 2, 3, -10, -20, -30]
    actual = MaximumSubarray.do_search(list)
    expected = {0, 2, 6}
    assert actual == expected

    list = [-10, -20, -30, 1, 2, 3]
    actual = MaximumSubarray.do_search(list)
    expected = {3, 5, 6}
    assert actual == expected

    list = [-10, 1, 2, 3, -20, -30]
    actual = MaximumSubarray.do_search(list)
    expected = {1, 3, 6}
    assert actual == expected
  end

  test "find maximum subarray of odd sized list" do
    list = [-1, 20, -10, -20, -30]
    actual = MaximumSubarray.do_search(list)
    expected = {0, 1, 19}
    assert actual == expected

    list = [-10, -20, -40, -1, 20]
    actual = MaximumSubarray.do_search(list)
    expected = {3, 4, 19}
    assert actual == expected

    list = [-10, 1, 2, 3, -20]
    actual = MaximumSubarray.do_search(list)
    expected = {1, 3, 6}
    assert actual == expected
  end
end
