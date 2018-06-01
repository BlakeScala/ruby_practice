class Word
  def initialize(str)
    @word = str;
  end
  def word
    @word
  end
  def scramble
    letters = @word.split('')
    letters.each_with_index do |letter, index|
      random = (rand(word.length) + 1).to_i
      letters.insert(random, letters.delete_at(index))
    end
    letters.join()
  end
end

word = Word.new(ARGV[0])
puts word.scramble()
