class GamesController < ApplicationController
require 'json'
require 'open-uri'


  def home
  end

  def generate_random_letter(size = 9)
  charset = %w{A C D E F G H J K M N P Q R T V W X Y Z}
  (0...size).map{ charset.to_a[rand(charset.size)] }.join(" , ")
  end

  def new
    @letters = generate_random_letter
  end

  def score
    @word = params[:new]
    url = open("https://wagon-dictionary.herokuapp.com/#{@word}")
    @json = JSON.parse(url.read)
    return @json["found"]
    # require two gems
    # acees the api (apiuri) which gives us JSON
    # parse JASON to turn it into Ruby hash
    # access one of the keys in that hash to get the value to true/false
  end

end
