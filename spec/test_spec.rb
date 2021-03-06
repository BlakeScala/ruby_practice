require('rspec')
require('test')

describe('String#leetspeak') do
  it('replaces every "e" in a string with a "3"') do
    expect("elephant".leetspeak).to(eq("3l3phant"))
  end
  
  it('replaces every "o" in a string with a "0"') do
    expect("boo".leetspeak).to(eq("b00"))
  end
end
