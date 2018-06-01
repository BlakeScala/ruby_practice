class String
  def leetspeak()
    split_sentence = self.split()
    split_sentence.each do |word|
      word.gsub!("e", "3")
      word.gsub!("o", "0")
    end
    split_sentence.join(" ")
  end
end
