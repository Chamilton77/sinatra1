require 'sinatra'
require 'sendgrid-ruby'
require 'shotgun'
include SendGrid

get '/' do  #sets up the home page on my website
  redirect '/home' #redirects to the home page erb
end

get '/home' do
	erb :home
end

get '/about-us' do 
	erb :about #takes you to the about us page through the link
end

get '/buy-now' do 
	erb :buy
end

get '/contact-us' do 
	erb :contact
end

post '/contact-us' do 
	puts params.inspect
	@email = params[:email] #gets the params of email and puts it in an istance
	@words = params[:words] #gets the params for the words section
	@subject = params[:subject] #gets the params for the subject section
#the data json takes details from the page and puts them into an email layout
#the email, subject and words are taken off the page in instance variables then put into an email that 
#is sent to the recipient.
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
sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY']) #takes the sendgrid api and uses it to send emails
response = sg.client.mail._("send").post(request_body: data) 
puts response.status_code
puts response.body
puts response.headers

	erb :home #after the page is done sending the email it sends you to the home page
end
