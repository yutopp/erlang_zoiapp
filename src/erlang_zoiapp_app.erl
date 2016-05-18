-module(erlang_zoiapp_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    ok = erlang_zoiapp_http_starter:start(),
    erlang_zoiapp_sup:start_link().

stop(_State) ->
    ok.
