require 'polyglot'
require 'treetop'

def print_tree t, depth = 0
  if t !=nil
    print " "*depth
    puts (t.extension_modules[0].inspect.split "::")[1]
    
    if t.elements != nil
      for c in t.elements
        print_tree(c, depth+1) unless c.extension_modules[0] == nil
      end
    end
  end
end

while true
  Treetop.load 'grammar'
  parser = ExpressionParser.new
  print "> "
  input = gets.chomp
  next if input == 'r'
  result = parser.parse input
  if result == nil
    puts parser.failure_reason
  else
    puts result.eval
  end
end
