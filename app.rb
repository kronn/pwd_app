require 'vendor/to_pwd/lib/password_transformation'
require 'erb'

class PasswordApp < Sinatra::Base
  set :environment, ( ENV['RACK_ENV'] || 'development' ).to_sym
  set :root,        File.dirname(__FILE__)
  disable :run

  get '/' do
    erb :index
  end

  post '/transform' do
    @password = PasswordString.new(request.POST["plainpass"]).to_s
    erb :result
  end

  get '/about' do
    erb :about
  end
end
