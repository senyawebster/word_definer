require ('sinatra')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @list = Word.all
  erb(:input)
end

post('/') do

end

get('/output') do
  @word = params['word']
  @definition = params['definition']
  erb(:output)
end
