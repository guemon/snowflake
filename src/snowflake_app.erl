-module(snowflake_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    lager:error("あいうえお", []),
    lager:info("abcdefg", []),
    snowflake_sup:start_link().

stop(_State) ->
    ok.
