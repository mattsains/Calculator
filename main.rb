require 'polyglot'
require 'treetop'
require 'readline'

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

while line = Readline.readline("> ", true)
  Treetop.load 'grammar'
  parser = ExpressionParser.new
  next if line == 'r'
  result = parser.parse line.gsub(/\s+/, "")
  if result == nil
    puts "   " + parser.failure_reason
  else
    puts "  = " + result.eval.to_s
  end
end
puts "exit"
puts "Goodbye!"
