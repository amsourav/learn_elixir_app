defmodule FirstElixirApp do
  import :math, only: [sqrt: 1]
  @moduledoc """
  Documentation for FirstElixirApp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FirstElixirApp.hello
      :world

  """
  def hello do
    :world
  end

  def fall_velocity(:earth, distance) when distance >= 0 do
    sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
    sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
    sqrt(2 * 3.71 * distance)
  end


  def fall_velocity(planet, distance) when distance >= 0 do
    case planet do
      :earth -> sqrt(2 * 9.8 * distance)
      :moon  -> sqrt(2 * 1.6 * distance)
      :mars  -> sqrt(2 * 3.71 * distance)
    end
  end

  def fall_gravity_velocity(planet, distance) when distance >= 0 do
    gravity = case planet do
      :earth -> 9.8
      :moon  -> 1.6
      :mars  -> 2.71
    end

    sqrt(2 * gravity * distance)
  end

  def fall_gravity_velocity_type(planet, distance) when distance >= 0 do
    gravity = case planet do
      :earth -> 9.8
      :moon  -> 1.6
      :mars  -> 3.71
    end

    velocity = sqrt(2 * gravity * distance)

    cond do
      velocity == 0 -> :stable
      velocity < 5  -> :slow
      velocity >= 5 and velocity < 10 -> :moving
      velocity >= 10 and velocity < 20 -> :fast
      velocity >= 20 -> :flash
    end
  end
end
