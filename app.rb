require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:home)
end

get('/shows') do
  erb(:shows)
end

get('/bio') do
  erb(:bio)
end

get('/tickets') do
  erb(:form)
end

get('/receipt') do
  @number = params.fetch('number-of')
  @show = params.fetch('show')
  @name = params.fetch('name')
  @email = params.fetch('email')
  erb(:receipt)
end
