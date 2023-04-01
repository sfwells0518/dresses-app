class DressesController < ApplicationController
  def index
    @dresses = Dress.all
    render :index
    # render json: { message: "hello dress index" }
  end

  def show
    @dress = Dress.find_by(id: params[:id])
    render :show
    # render json: { message: "hello dress show" }
  end

  def create
    # render json: { message: "hello dress create" }
  end
end
