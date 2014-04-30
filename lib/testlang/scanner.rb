module Testlang
  module Scanner
    def self.scan(source)
      source = source.strip
      tokens = []
      until source.empty?
        case source
        when /\A\s+/
          source = $'
        when /\A\w+/
          tokens.push [:ITEM, $&]
          source = $'
        else
          c = source[0,1]
          tokens.push [c, c]
          source = source[1..-1]
        end
      end
      tokens.push [false, '$']
      tokens
    end
  end
end
