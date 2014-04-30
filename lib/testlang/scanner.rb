module Testlang
  module Scanner
    def self.scan(str)
        tokens = []
        until str.empty?
          case str
          when /\A\s+/
            ;
          when /\A\d+/
            tokens.push [:NUMBER, $&.to_i]
          when /\A.|\n/
            s = $&
            tokens.push [s, s]
          end
          str = $'
        end
        tokens.push [false, '$']
        tokens
      end
  end
end
