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

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    # @pharse = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @phrase = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@phrase}"
  end

  get "/:operation/:number1/:number2" do
    # if params[:operation] == "add"
    #   @operator = "yay!"
    # elsif params[:operation] == "subract"
    #   @operator = -
    # elsif params[:operation] == "divide"
    #   @operator = /
    # elsif params[:operation] == "multiply"
    #   @operator = *
    # end
    # "#{@operator}"
    # @total = params[:number1].to_i @operator params[:number2].to_i
    # "#{@total}"
    @operator = params[:operation]
    if @operator == "add"
      params[:number1].to_i + params[:number2].to_i
    end
  end

end
