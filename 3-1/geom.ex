defmodule Geom do
  @doc """
  Returns the area of a shape

  ## Examples
    
    iex> area(:rectangle, 3, 4)
    12
    iex> area(:triangle, 3, 5)
    7.5
    iex> area(:ellipse, 2, 4)
    25.132741228718345

  """
  @spec area(atom(), number(),number()) :: number()

  def area(:rectangle, a, b), do: a * b
  def area(:triangle, a, b), do: (a * b) / 2.0
  def area(:ellipse, a, b), do: a * b * :math.pi()
end
