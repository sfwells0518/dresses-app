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
    @dress = Dress.new(
      material: params[:material],
      name: params[:name],
      price: params[:price],
    )
    @dress.save
    render :show
    # render json: { message: "hello dress create" }
  end

  def update
    @dress = Dress.find_by(id: params[:id])
    @dress.material = params[:material] || @dress.material
    @dress.name = params[:name] || @dress.name
    @dress.price = params[:price] || @dress.price

    @dress.save
    render :show

    # render json: { message: "hello dress update" }
  end
end
