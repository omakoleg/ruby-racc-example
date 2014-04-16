require './lib/testlang/scanner'
require './lib/testlang/parser'
require './lib/testlang/code_generator'

tokens = Testlang::Scanner.scan(ARGF.read)
ast = Testlang::Parser.new.parse(tokens)
code = Testlang::CodeGenerator::C.new.compile(ast)
puts code

