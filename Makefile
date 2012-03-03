all:
	@./rebar update-deps
	@./rebar get-deps
	@./rebar compile
	@./rebar xref
	@./rebar eunit

compile:
	@./rebar compile skip_deps=true

xref:
	@./rebar xref skip_deps=true

eunit:
	@./rebar eunit skip_deps=true

clean:
	@./rebar clean skip_deps=true

distclean:
	@./rebar delete-deps
	@./rebar clean

release:
	@./rebar generate
