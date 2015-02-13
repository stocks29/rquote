defmodule Rquote do

  @min 0.01
  @max 1000

  def new, do: :crypto.rand_uniform(@min, @max)
  def new(last), do: _rand_negate(_perc_move * last) + last

  def stream(last), do: Stream.iterate(last, &(new(&1)))

  defp _perc_move do
    dist = _distribution
    Enum.at(dist, :crypto.rand_uniform(0, length(dist))) / 100
  end

  defp _rand_negate(move) do 
    if :crypto.rand_uniform(0, 2) == 1 do
      move
    else
      -1 * move
    end
  end

  defp _distribution do
    (_single_dist |> _dist_iter([])) ++ Enum.to_list(6..20)
  end

  defp _dist_iter([], acc), do: acc
  defp _dist_iter([_|tail] = dist, acc) do
    _dist_iter(tail, acc ++ dist ++ dist ++ dist ++ dist)
  end

  defp _single_dist, do: Enum.to_list(5..0)

end
