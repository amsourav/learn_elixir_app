defmodule Count do
  def countdown(from) when from > 0 do
    IO.inspect(from)
    countdown(from-1)
  end

  def countdown(_) do
    IO.puts('Blast off!')
  end

  # Count Up
  #
  def countup(limit) do
    countup(1, limit)
  end

  def countup(count, limit) when count <= limit do
    IO.inspect(count)
    countup(count+1, limit)
  end

  def countup(_count,_limit) do
    IO.puts "Finished!!"
  end
end

