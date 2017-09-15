require ('sinatra')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
require('pry')

get('/') do
  @list = Words.all
  erb(:input)
end

post('/') do
  
end

get('/output') do
  @word = params['word']
  @definition = params['definition']
  erb(:output)
end
