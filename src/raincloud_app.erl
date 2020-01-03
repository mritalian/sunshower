%%%-------------------------------------------------------------------
%% @doc raincloud public API
%% @end
%%%-------------------------------------------------------------------

-module(raincloud_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    raincloud_handler:start(),
    raincloud_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
