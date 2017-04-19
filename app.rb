require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/find_replace')

get('/') do
  erb(:index)
end

get('/results') do
  @input = params.fetch('input')
  @string = @input.find_replace
  erb(:results)
end
