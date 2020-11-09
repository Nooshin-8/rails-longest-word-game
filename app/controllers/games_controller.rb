class GamesController < ApplicationController

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

  @attempt =
  end

end
