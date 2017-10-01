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

get('/word/:id') do
  @word = Word.find(params[:id])
  name = params["name"]
  definition = params["definition"]
  erb(:word_page)
end

post('/word/:id') do
  @word = Word.find(params[:id])
  name = params["name"]
  definition = params["definition"]
  @word.add_definition(definition)
  erb(:word_page)
end

# get('/output') do
#   @word = params['word']
#   @definition = params['definition']
#   erb(:output)
# end
