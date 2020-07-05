defmodule MergeSort do
  def merge(l1, []), do: l1
  def merge([], l2), do: l2
  def merge([h1 | t1] = l1, [h2 | t2] = l2) do
    cond do
      h1 < h2 ->
        [h1 | merge(t1, l2)]
      true ->
        [h2 | merge(l1, t2)]
    end
  end

  def merge_sort([]), do: []
  def merge_sort([_elem] = list), do: list
  def merge_sort(list) do
    midpoint = round(length(list)/2)
    {l1, l2} = Enum.split(list, midpoint)
    merge(merge_sort(l1), merge_sort(l2))
  end
end
