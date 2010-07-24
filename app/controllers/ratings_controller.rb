class RatingsController < ApplicationController
  def new
  end
  
  def create
    @rate = Rating.rate(params[:text])
  end

end
