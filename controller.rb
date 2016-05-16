require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './models/about'
require_relative './models/camelcase'
require 'json'

# sets the home location
get '/' do
  erb :home
end

# Street through phone have not function on their own
# but are pulled togehter by the get '/address' method
get '/street/' do
  about = About.new(params[:street])
  return "#{about.address()}"
end

get '/building/' do
  about = About.new(params[:building])
  return "#{about.building}"
end

get '/postcode/' do
  about = About.new(params[:postcode])
  return "#{about.postcode}"
end

get '/phone/' do
  about = About.new(params[:phone])
  return "#{about.phone}"
end

get '/address' do
  content_type(:json)

  about = About.new(params[:street], params[:building], params[:postcode], params[:phone])

  results = {
    street: about.street(),
    building: about.building(),
    postcode: about.postcode().upcase,
    phone: about.phone()
  }
  return results.to_json
end

# method for the camelcase.rb file that returns the embedded Ruby
get '/camelcase/:word' do
  camelcase = CamelCase.new(params[:word])
  @camel = camelcase.camel
  erb(:camelcase)
end