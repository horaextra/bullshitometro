class RatingsController < ApplicationController
  def new
  end
  
  def create
    @text = params[:text]
    @rate = Rating.rate(@text)
  end

end
