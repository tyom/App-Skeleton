require 'sinatra'
require 'slim'
require 'json'
require 'pry'
require 'open-uri'

set :partial_template_engine, :slim
enable :partial_underscores

get '/' do
  slim :index
end

get '/remote' do
  url = params[:url]
  open(URI::encode(url)).read
end
