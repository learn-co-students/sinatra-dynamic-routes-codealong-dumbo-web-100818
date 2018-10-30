require_relative 'config/environment'
require "pry"
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get '/goodbye/:name' do
    @username = params[:name]
    "Goodbye, #{@username}."
  end

  get "/multiply/:num1/:num2" do
    @first = params[:num1].to_i
    @second = params[:num2].to_i
    #binding.pry
    "#{@first * @second}"

  end
end
