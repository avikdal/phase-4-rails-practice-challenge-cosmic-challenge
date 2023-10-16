class PlanetsController < ApplicationController
  # before_action :set_planet, only: %i[ show update destroy ]

  # GET /planets
  def index
    render json: Planet.all
  end

  #SHOW /planets/:id
  def show
    planet = Planet.find(params[:id])
    render json: planet, status: :ok
  end

  def create
    planet = Planet.create!(planet_params)
  end

  def update
    byebug
  end

  def destroy
    byebug
  end

  private

  def planet_params
    params.permit(:name, :distance_from_earth)
  end

end
