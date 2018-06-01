require('rspec')
require('title_case')
require('pry')

describe('#title_case') do
  it("capitalizes the first letter of a word") do
    expect(title_case("title test")).to(eq("Title Test"))
  end
end
