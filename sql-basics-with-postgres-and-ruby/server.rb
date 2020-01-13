require 'sinatra'
require 'pg'
require 'pry'

set :bind, '0.0.0.0'

def db_connection
  begin
    connection = PG.connect(dbname: 'pet_db')
    yield(connection)
  ensure
    connection.close()
  end
end

get '/' do
  redirect '/pets'
end

get '/pets' do
  @pets = db_connection {|conn| conn.exec('SELECT name FROM pets')}
  erb :index
end

post '/pets' do
  pet = params['pet_name']
  db_connection do |conn|
    conn.exec('INSERT INTO pets (name) VALUES ($1)', pet)
  end
  redirect '/pets'
end
