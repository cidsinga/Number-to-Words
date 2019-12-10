#!/usr/bin/ruby
# class DigitNumber
#   def initialize(input)
#     @input = input
#     @input_reverse = input.reverse()
#   end
#   def input_rev
#     @input_reverse
#   end
#
#   def num_convert
#     @ones = {"0" => " ","1" => "one", "2" => "two", "3" => "three",  "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine"}
#     @tens = {"1" => "ten", "2" => "twenty", "3" => "thirty",  "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
#     # @hundreds
#     # one_place = @ones.fetch(@input_reverse[0])
#     one_place = @ones.fetch(@input_reverse[0])
#     # tens_place = @tens.fetch(@input_reverse[1])
#     # @input.length.times do
#     # if @input_reverse[0] == true
#     #   one_place.prepend(@ones.fetch(@input_reverse[0]))
#     # elsif @input_reverse[1] == true
#     #     tens_place.prepend(@tens.fetch(@input_reverse[1]))
#
#    one_place
#     end
#
#   # end
# end


class DigitNumber
  def initialize(input)
    @input = input
    @input_reverse = input.reverse()
    @ones_place = ""
    @tens_place = ""
    @hundreds_place = ""
    @teens_place = ""

  end
  def input_rev
    @input_reverse
  end

    @@ones = {"0" => " ","1" => "one", "2" => "two", "3" => "three",  "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine"}
    @@tens = {"1" => "ten", "2" => "twenty", "3" => "thirty",  "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
    @@teens = {"0" => "ten", "1" => "eleven", "2" => "twelve", "3" => "thirteen", "4" => "fourteen", "5" => "fifteen", "6" => "sixteen", "7" => "seventeen", "8" => "eighteen", "9" => "nineteen"}




    def teens
      if @input_reverse[1] == "1"
      @teens_place =  @@teens.fetch(@input_reverse[0])
      else
      @teens_place = ""
      end
    end

    def ones
      if @input_reverse[0] && @input_reverse[1] != "1"
      @ones_place  = @@ones.fetch(@input_reverse[0])
      else
      @ones_place =  ""
      end
    end

    def tens
      if @input_reverse[1] && @input_reverse[1] != "1"
      @tens_place =  @@tens.fetch(@input_reverse[1])
      else
      @tens_place =  ""
      end
    end

    def hundreds
      if @input_reverse[2]
      @hundreds_place =  @@ones.fetch(@input_reverse[2]) + "hundred"

      else
        ""
      end
    end

    def assemble
    @hundreds_place + @tens_place + @ones_place + @teens_place

    end



end
