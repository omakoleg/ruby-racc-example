require './lib/testlang/scanner'
require './lib/testlang/parser'
# require './lib/testlang/code_generator'

tokens = Testlang::Scanner.scan(ARGF.read)
p tokens
ast = Testlang::Parser.new.parse(tokens)
puts ast.inspect
#code = Testlang::CodeGenerator::C.new.compile(ast)
#puts code

