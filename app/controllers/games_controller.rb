require 'rest-client'
require 'json'
class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    # get answer
    # save answer
    @answer = params[:answer]
    # get Api
    url = "https://wagon-dictionary.herokuapp.com/#{answer}"
    response = RestClient.get(url)
    data = JSON.parse(response)
    @data = data[:found]
    return "Congratulations!#{answer} is a valid English word" if [:found] == true
  end
    # check if word
    # check if you used the correct letters

    # receive a string and check against [th
    # .find .each do block
    # if statements
    # output the respective answer as a string @ the score html view

  #   if @answer.include?[:words_found]
  #     "Sorry but TEST can't be built out of ${@input}"
  #   elsif @answer.include?(:autocomplete_hits)
  #     'Sorry but MIEL does not seem to be a valid English word...'
  #   else 'Congratulations! DUNE is a valid English word!'
  #   end
  # end

end
