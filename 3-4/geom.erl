-module(geom).
-export([area/1]).

%% @doc Returns the area of a shape
%%
%% ## Examples
%% 1> c(geom).
%% {ok,geom}
%% 2> geom:area({rectangle, 7, 3}).
%% 21
%% 3> geom:area({triangle, 7, 3}).
%% 10.5
%% 4> geom:area({ellipse, 7, 3}).
%% 65.97344572538566

-spec(area({atom(), number(),number()}) -> number()).

area({Shape, A, B}) -> area(Shape, A, B).

-spec(area(atom(), number(),number()) -> number()).

area(rectangle, A, B) when A >= 0, B >= 0 -> A * B;
area(triangle, A, B) when A >= 0, B >= 0 -> (A * B) / 2.0;
area(ellipse, A, B) when A >= 0, B >= 0 -> A * B * math:pi();
area(_, _, _) -> 0.
