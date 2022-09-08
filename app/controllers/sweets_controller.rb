class SweetsController < ApplicationController
  def index
    sweets = Sweet.all
    render json: sweets
  end

  def show
    sweet = Sweet.find_by(id: params[:id])
    if !sweet.nil?
      render json: sweet
    else
      render json: { error: "Sweet not found" }
    end
  end
end
