module Testlang
  module CodeGenerator
    class C
      def compile(ast)
        @output = <<-EOF
        
#include <stdio.h>

static void some_function(void){
  printf("Hello fom C code!\\n");
}
int main(void){
EOF
        case ast.first
        when :script
          compile_call(ast[1])
        else
          STDERR.puts 'compile error.'
        end
        @output += <<-EOF
  return 0;
}
EOF
      end
      
      def compile_call(call)
        case call.first
        when :call
          @output << "  #{call[1]}();\n"
        else
          STDERR.puts 'compile_call error.'
        end
      end
    end
  end
end
