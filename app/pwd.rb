require 'vendor/to_pwd/lib/password_transformation'

get '/' do
  <<-HTML
    <html>
      <head><title>to_pwd</title></head>
      <body>
        <form action="/transform" method="POST">
          <input type="text" name="plainpass" />
          <input type="submit" value="transform" />
        </form>
      </body>
    </html>
  HTML
end

post '/transform' do
  PasswordString.new(request.POST["plainpass"]).to_s
end
