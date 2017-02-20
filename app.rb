require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    result = @num * @num
    "#{result}"
  end

  get '/say/:number/:phrase' do
    @@phrase_string = []
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @number.times do
      @@phrase_string << @phrase
    end
    "#{@@phrase_string.join("\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @@word_collection = []
    word_one = params[:word1]
    @@word_collection << word_one
    word_two = params[:word2]
    @@word_collection << word_two
    word_three = params[:word3]
    @@word_collection << word_three
    word_four = params[:word4]
    @@word_collection << word_four
    word_five = params[:word5]
    @@word_collection << word_five

    "#{@@word_collection.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_one = params[:number1].to_i
    @num_two = params[:number2].to_i

    case @operation
      when "add"
        "#{@num_one + @num_two}"
      when "subtract"
        "#{@num_one - @num_two}"
      when "multiply"
        "#{@num_one * @num_two}"
      when "divide"
        "#{@num_one / @num_two}"
      else
      end
    end




end
