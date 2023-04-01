class DressesController < ApplicationController
  def index
    # @dresses = Dress.all
    # render :index
    render json: { message: "hello car index" }
  end
end
