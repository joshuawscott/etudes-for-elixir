defmodule Geom do
  @author "Joshua Scott <joshua.scott@gmail.com>"
  @moduledoc "Functions for calculating areas of geometric shapes."
  @copyright "2013 Joshua Scott"
  @version 0.1

  @doc """
    Calculates the area of a rectangle, given the length
    and width. Returns the product of its arguments
"""
  
  @spec area(number,number) :: number
  def area(x, y), do: x * y
end
