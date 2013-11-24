defmodule Geom do
  @doc """
  Returns the area of a shape

  ## Examples
    
    iex> area({:rectangle, 7, 3})
    21
    iex> area({:triangle, 7, 3})
    10.5
    iex> area({:ellipse, 7, 3})
    65.97344572538566
  """

  @spec area({atom(), number(), number()}) :: number()
  def area({shape, a, b}), do: area(shape, a, b)

  @spec area(atom(), number(),number()) :: number()

  defp area(:rectangle, a, b) when a >= 0 and b >= 0, do: a * b
  defp area(:triangle, a, b) when a >= 0 and b >= 0, do: (a * b) / 2.0
  defp area(:ellipse, a, b) when a >= 0 and b >= 0, do: a * b * :math.pi()
  defp area(_, _, _), do: 0
end
