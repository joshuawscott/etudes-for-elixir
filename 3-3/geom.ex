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
    iex> area(:rectangle, -1, 3)
    ** (FunctionClauseError) no function clause matching in Geom.area/3
    geom.ex:18: Geom.area(:rectangle, -1, 3)
  """
  @spec area(atom(), number(),number()) :: number()

  def area(:rectangle, a, b) when a >= 0 and b >= 0, do: a * b
  def area(:triangle, a, b) when a >= 0 and b >= 0, do: (a * b) / 2.0
  def area(:ellipse, a, b) when a >= 0 and b >= 0, do: a * b * :math.pi()
  def area(_, _, _), do: 0
end
