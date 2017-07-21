class ParksController < ApplicationController
  def index
    @parks = Park.all
    json_response(@parks)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
