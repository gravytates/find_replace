require('capybara/rspec')
require('./app')
Capybara.app=Sinatra::Application
set(:show_exceptions, false)

describe('the find_replace case path', {:type => :feature}) do
  it('replaces specified words within a string, along with partial matches, with another specified output') do
    visit('/')
    fill_in('input-string', :with => 'This cat party is CATostrophic')
    fill_in('find', :with => 'cat')
    fill_in('replace', :with => 'dog')
    click_button('Find! Replace!')
    expect(page).to have_content('This dog party is dogostrophic')
  end
end
