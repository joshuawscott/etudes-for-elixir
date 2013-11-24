-module(geom).
-export([area/3]).

-spec(area(atom(), number(),number()) -> number()).

%% @doc Returns the area of a shape
%%
%% ## Examples
%% 1> geom:area(rectangle, 3, 4).
%% 12
%% 2> geom:area(ellipse, 2, 3).
%% 18.84955592153876
%% 3> geom:area(triangle, 4, 5).
%% 10.0
%% 4> geom:area(rectangle, -1, 3).
%% 0

area(rectangle, A, B) when A >= 0, B >= 0 -> A * B;
area(triangle, A, B) when A >= 0, B >= 0 -> (A * B) / 2.0;
area(ellipse, A, B) when A >= 0, B >= 0 -> A * B * math:pi();
area(_, _, _) -> 0.
