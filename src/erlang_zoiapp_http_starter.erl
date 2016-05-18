-module(erlang_zoiapp_http_starter).
-export([start/0]).

start() ->
    Dispatch = cowboy_router:compile([
		{'_', [
               {"/", erlang_zoiapp_toppage_handler, []}
		]}
	]),
    {ok, _} = cowboy:start_clear(http, 100, [{port, 8080}], #{
		env => #{dispatch => Dispatch}
	}),
    ok.
