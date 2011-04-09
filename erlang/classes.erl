-module(classes).
-export([print/1]).
-export([find/2]).
-export([find/3]).
									
print([]) ->
	ok;
print([Head|Tail]) ->
	io:format("~p~n not found.", [Head]),
	print(Tail).

find([], Class) ->
	ok;
find([Head|Tail], Class) ->
	{A,B,C,D,E,F,G} = Head,
	case A == Class of
		true ->
			io:format("Class: ~p~n", [A]),
			io:format("Instructor: ~p~n", [B]),
			io:format("Days: ~p~n", [C]),
			io:format("Time: ~p~n", [D]),
			io:format("Room: ~p~n", [G]);
		false ->
			ok
	end,
	find(Tail, Class).
	
find(Type, [], Class) ->
	ok;
find(Type, [Head|Tail], Class) ->
	{A,B,C,D,E,F,G} = Head,
	case Type == class of
		true -> 
			case A == Class of
				true ->
					io:format("Class: ~p~n", [A]),
					io:format("Instructor: ~p~n", [B]),
					io:format("Days: ~p~n", [C]),
					io:format("Time: ~p~n", [D]),
					io:format("Room: ~p~n", [G]);
				false ->
					ok
			end;
		false ->
			case B == Class of
				true ->
					io:format("Class: ~p~n", [A]),
					io:format("Instructor: ~p~n", [B]),
					io:format("Days: ~p~n", [C]),
					io:format("Time: ~p~n", [D]),
					io:format("Room: ~p~n", [G]);
				false ->
					ok
			end
	end,
	find(Type, Tail, Class).