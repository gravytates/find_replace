require('capybara/rspec')
require('./app')
Capybara.app=Sinatra::Application
set(:show_exceptions, false)

describe('the find_replace case path', {:type => :feature}) do
end
