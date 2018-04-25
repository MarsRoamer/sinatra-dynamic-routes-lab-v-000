require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.chars.reverse.join}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @output = params[:phrase] * params[:number].to_i
    "#{@output}"
  end

end
