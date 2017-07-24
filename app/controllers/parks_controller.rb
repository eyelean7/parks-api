class ParksController < ApplicationController
  def index
    park_name = params[:park_name]
    if params[:park_name]
      @parks = Park.where(park_name: park_name)
    else
      @parks = Park.all
    end
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
        message: "Your park has been updated successfully."
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    @park_name = @park.park_name
    if @park.destroy
      render status: 200, json: {
        message: "#{@park_name} has been deleted from the database."
      }
    end
  end

  private
  def park_params
    params.permit(:park_name, :location)
  end
end
