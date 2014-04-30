task "lib/testlang/parser.rb" => "lib/testlang/parser.racc" do
  sh "racc -o lib/testlang/parser.rb lib/testlang/parser.racc" 
end

task "compile" => "lib/testlang/parser.rb" do
  sh "ruby testlang.rb test.lang > test.c"
end

task "test" => "compile" do
  sh "gcc -o test test.c"
end

task :default => "lib/testlang/parser.rb"