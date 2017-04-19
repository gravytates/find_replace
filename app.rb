require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/find_replace')

get('/') do
  erb(:index)
end

get('/results') do
  @input_string = params.fetch('input-string')
  @find = params.fetch('find')
  @replace = params.fetch('replace')
  @string = @input_string.find_replace(@find, @replace)
  erb(:results)
end
