require('rspec')
require('numbers-to-words')

# describe('Sting#scrabble-score') do
#   it('should increment points up by 1 for each letter ') do
#     expect("DABCDECFKJZ".scrabble_score()).to(eq(42))
#   end
# end

# word = Word.new("BACON")
#
# describe('Word#scrabble_calc') do
#
#   it('should increment points up by 1 for each letter ') do
#     expect(word.scrabble_score()).to(eq(42))
#   end
# end

#   word = Word.new("BACON")
#
# describe('Word#scrabble_calc') do
#   it('should increment points up by 1 for each letter ') do
#     expect(word.scrab_score()).to(eq(9))
#   end
# end


# num = DigitNumber.new("72")
#
# describe('DigitNumber#num_convert') do
# it('should print back name of input number in words ') do
#   expect(num.num_convert()).to(eq('seventytwo'))
# end
# end

num = DigitNumber.new("119")
num.teens()
num.ones()
num.tens()
num.hundreds()


describe('DigitNumber#num_convert') do
it('should print back name of input number in words ') do
  expect(num.assemble()).to(eq("nineteen"))
end
end
