run: main.rb grammar.rb
	./main.rb

grammar.rb: grammar.treetop
	tt grammar.treetop


