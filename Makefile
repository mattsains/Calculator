run: main.rb grammar.rb
	./main.rb

grammar.rb: grammar.treetop
	rm grammar.rb -f
	tt grammar.treetop


