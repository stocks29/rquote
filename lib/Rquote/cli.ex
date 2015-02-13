defmodule Rquote.Cli do
  
  def main([last, num_quotes]) do
    {last, _} = Float.parse(last)
    Rquote.stream(last)
    |> Stream.take(String.to_integer(num_quotes))
    |> Enum.each(&(IO.puts Float.to_string(&1, decimals: 2)))
  end
end