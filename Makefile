PROJECT = aleppo

PARSER=src/aleppo_parser

all :: $(PARSER).erl

include erlang.mk

$(PARSER).erl: $(PARSER).yrl
	$(ERLC) -o src/ src/aleppo_parser.yrl
