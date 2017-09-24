require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @list = Word.all
  erb(:homepage)
end

post('/') do
  name = params["name"]
  definition = params["definition"]
  word = Word.new(name, definition)
  word.save()
  
  @list = Word.all()
  erb(:homepage)
end

# get('/output') do
#   @word = params['word']
#   @definition = params['definition']
#   erb(:output)
# end
