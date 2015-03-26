#!/usr/bin/env ruby
require 'polyglot'
require 'treetop'
require 'readline'
require File.dirname(__FILE__)+'/grammar.rb'

class Context
  attr_accessor :parent
  attr_accessor :line
  @var
  attr_accessor :last

  def initialize parent=nil
    @parent = parent
    @line = 0
    @var = {}
    @last = nil
  end

  def var id, val=nil
    if val != nil
      @var[id] = val
    else
      if @var.has_key? id
        @var[id]
      elsif @parent == nil
        raise Exception.new "#{id} undefined."
      else
        @parent.var id
      end
    end
  end

  def defined? id
    if @var.has_key? id
      true
    elsif @parent == nil
      false
    else
      @parent.var[id]
    end
  end
end

$context = Context.new #forms a linked list stack of contexts

def pprint val, id=nil
  str = "  "
  if id != nil
    str+="#{id} = "
  end
  if val.methods.include? :print
    str += val.print
  else
    str += val.to_s
  end
  puts str
end

while line = Readline.readline("> ", true)
  parser = ExpressionParser.new
  next if line == 'r'
  begin
    expression = parser.parse line.gsub(/\s+/, "")
    if expression == nil
      raise Exception.new parser.failure_reason
    end
    $context.last = expression.eval
  #rescue Exception => e
  #  puts   "   Error: #{e.message}"
  end
end
puts "exit"
puts "Goodbye!"
