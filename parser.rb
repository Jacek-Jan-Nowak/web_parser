#!/usr/bin/env ruby
require_relative "lib/parser"

def request_argument
  STDERR.puts "Please provide a file.log"

  exit 1
end

file_path = ARGV[0] or request_argument

begin
  parser = Parser::Router.new(file_path)
  puts parser.format
rescue Parser::Error => e
  STDERR.puts "Couldn't parse log: #{e.message}"
end