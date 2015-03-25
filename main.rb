#!/usr/bin/env ruby
require 'polyglot'
require 'treetop'
require 'readline'

Context = Struct.new :line, :var, :last
$context = Context.new 0, {}
$context.line = 0

def defined str
  $context.var.has_key? str
end

def pprint str
  puts "  #{str}"
end

while line = Readline.readline("> ", true)
  Treetop.load 'grammar'
  parser = ExpressionParser.new
  next if line == 'r'
  begin
    expression = parser.parse line.gsub(/\s+/, "")
    if expression == nil
      raise Exception.new parser.failure_reason
    end
    $context.last = expression.eval
  rescue Exception => e
    puts   "   Error: #{e.message}"
  end
end
puts "exit"
puts "Goodbye!"
