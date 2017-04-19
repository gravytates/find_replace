require('rspec')
require('find_replace')

describe("String#find_replace") do
  it('replaces a given single word with a specified replacement') do
    expect('hello'.find_replace('hello', 'goodbye')).to(eq('goodbye'))
  end

  it('replaces a chosen single word within a string of words with a specified replacement') do
    expect('hello world, my friend. hello my friend.'.find_replace('hello', 'goodbye')).to(eq('goodbye world, my friend. goodbye my friend.'))
  end

  it('ignores case differences in specified word when comparing') do
    expect('Hello World, hello my friend.'.find_replace('hello', 'goodbye')).to(eq('goodbye World, goodbye my friend.'))
  end

  it('recognizes matches of chosen word as part of larger words.') do
    expect('my birthday was catostrophic.'.find_replace('cat', 'dog')).to(eq('my birthday was dogostrophic.'))
  end
end
