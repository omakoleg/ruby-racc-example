require './lib/testlang/scanner'
require './lib/testlang/parser'

while true
  print '>>> '; $stdout.flush
  str = $stdin.gets.strip
  break if /q/i =~ str
  begin
    tokens = Testlang::Scanner.scan(str)
    p 'Tokens:'
    p tokens
    ast = Testlang::Parser.new.parse(tokens)
    p 'Result:'
    p ast.inspect
  rescue ParseError
    puts 'parse error'
  end
end