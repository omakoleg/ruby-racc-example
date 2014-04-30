#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.11
# from Racc grammer file "".
#

require 'racc/parser.rb'
module Testlang
  class Parser < Racc::Parser

module_eval(<<'...end parser.racc/module_eval...', 'parser.racc', 22)
  def parse(tokens)
    @tokens = tokens
	
	do_parse
  end
  
  def next_token
    @tokens.shift
  end
...end parser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
     9,    10,     7,     8,     6,    18,     4,     3,    12,     5,
     9,    10,     7,     8,     4,     3,    13,     5,     4,     3,
   nil,     5,     4,     3,   nil,     5,     4,     3,   nil,     5,
     4,     3,   nil,     5,     9,    10,     9,    10 ]

racc_action_check = [
    11,    11,    11,    11,     1,    11,     3,     3,     4,     3,
     2,     2,     2,     2,     0,     0,     6,     0,    10,    10,
   nil,    10,     9,     9,   nil,     9,     8,     8,   nil,     8,
     7,     7,   nil,     7,    15,    15,    14,    14 ]

racc_action_pointer = [
     8,     4,     7,     0,    -1,   nil,    16,    24,    20,    16,
    12,    -3,   nil,   nil,    33,    31,   nil,   nil,   nil ]

racc_action_default = [
    -2,   -10,    -1,   -10,   -10,    -9,   -10,   -10,   -10,   -10,
   -10,   -10,    -8,    19,    -3,    -4,    -5,    -6,    -7 ]

racc_goto_table = [
     2,     1,   nil,    11,   nil,   nil,   nil,    14,    15,    16,
    17 ]

racc_goto_check = [
     2,     1,   nil,     2,   nil,   nil,   nil,     2,     2,     2,
     2 ]

racc_goto_pointer = [
   nil,     1,     0 ]

racc_goto_default = [
   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 11, :_reduce_none,
  0, 11, :_reduce_2,
  3, 12, :_reduce_3,
  3, 12, :_reduce_4,
  3, 12, :_reduce_5,
  3, 12, :_reduce_6,
  3, 12, :_reduce_7,
  2, 12, :_reduce_8,
  1, 12, :_reduce_none ]

racc_reduce_n = 10

racc_shift_n = 19

racc_token_table = {
  false => 0,
  :error => 1,
  :UMINUS => 2,
  "*" => 3,
  "/" => 4,
  "+" => 5,
  "-" => 6,
  "(" => 7,
  ")" => 8,
  :NUMBER => 9 }

racc_nt_base = 10

racc_use_result_var = false

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "UMINUS",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\"(\"",
  "\")\"",
  "NUMBER",
  "$start",
  "target",
  "exp" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'parser.racc', 11)
  def _reduce_2(val, _values)
     0 
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 13)
  def _reduce_3(val, _values)
     val[0] + val[2] 
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 14)
  def _reduce_4(val, _values)
     val[0] - val[2] 
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 15)
  def _reduce_5(val, _values)
     val[0] * val[2] 
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 16)
  def _reduce_6(val, _values)
     val[0] / val[2] 
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 17)
  def _reduce_7(val, _values)
     val[1] 
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 18)
  def _reduce_8(val, _values)
     -(val[1]) 
  end
.,.,

# reduce 9 omitted

def _reduce_none(val, _values)
  val[0]
end

  end   # class Parser
  end   # module Testlang
