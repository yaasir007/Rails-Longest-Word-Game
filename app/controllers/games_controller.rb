require 'json'
require 'open-uri'

class GamesController < ApplicationController
    def score  
        @word = params[:word]
        
        url = "https://wagon-dictionary.herokuapp.com/#{@word}"
        user_serialized = URI.open(url).read
        user = JSON.parse(user_serialized)
        @user_input =  user["found"]
    end

    def new
        @letters = ("A".."Z").to_a.sample(10)
    end
end