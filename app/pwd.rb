require 'vendor/to_pwd/lib/password_transformation'
require 'erb'

get '/' do
  erb :index
end

post '/transform' do
  @password = PasswordString.new(request.POST["plainpass"]).to_s
  erb :result
end
