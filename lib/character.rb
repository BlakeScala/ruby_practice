class Character
  attr_reader(:name)
  attr_writer()
  attr_accessor(:heightIn, :weightLb, :skills)
  
  def initialize(name, heightIn, weightLb, skills)
    @name = name
    @heightIn = heightIn
    @weightLb = weightLb
    @skills = skills
  end
  
  def skillBoost(multiplier = 1)
    skills.each_pair { |key, value| skills[key] = value * multiplier }
    puts skills
  end
end

skills = { :strength => 56, :speed => 86, :agility => 78}
testGuy = Character.new("Blake", 57, 160, skills)
puts testGuy.name
puts testGuy.heightIn
puts testGuy.weightLb
puts testGuy.skills
testGuy.skillBoost(1.5)
