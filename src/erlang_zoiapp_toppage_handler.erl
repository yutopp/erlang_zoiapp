-module(erlang_zoiapp_toppage_handler).

-export([init/2]).

init(Req, Opts) ->
	cowboy_req:reply(200, #{
		<<"content-type">> => <<"text/plain">>
	}, <<"Hello world!">>, Req),
	{ok, Req, Opts}.
