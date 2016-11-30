require 'sinatra'
require 'sendgrid-ruby'
require 'shotgun'
include SendGrid

get '/home' do
	erb :home
end

get '/about-us' do 
	erb :about
end

get '/buy-now' do 
	erb :buy
end

get '/contact-us' do 
	erb :contact
end

post '/contact-us' do 
	puts params.inspect
	@email = params[:email]
	@words = params[:words]
	@subject = params[:subject]

data = JSON.parse('{
  "personalizations": [
    {
      "to": [
        {
          "email": "cjcham77@gmail.com"
        }
      ],
      "subject": "' + params[:subject] +'"
    }
  ],
  "from": {
    "email":  "'+ @email +'" 
  },
  "content": [
    {
      "type": "text/plain",
      "value": "'+ @words +'"
    }
  ]
}')
sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._("send").post(request_body: data)
puts response.status_code
puts response.body
puts response.headers

	erb :home
end
