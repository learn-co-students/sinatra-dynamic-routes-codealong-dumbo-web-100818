require_relative 'config/environment'

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

  get "/goodbye/:name" do
  # , a dynamic route that returns "Goodbye,
  # (person's name).", a string.
  @person_name = params[:name]
  "Goodbye, #{@person_name}."
  end

  get "/multiply/:num1/:num2" do
  @total = params[:num1].to_i * params[:num2].to_i
  return @total.to_s
  end

end
