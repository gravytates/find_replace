require('rspec')
require('find_replace')

describe("String#find_replace") do
  it('replaces a given single word with a specified replacement') do
    expect('hello'.find_replace('hello', 'goodbye')).to(eq('goodbye'))
  end

end
