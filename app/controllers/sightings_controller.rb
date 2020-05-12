# frozen_string_literal: true

class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: %i[bird location]
    }
    render json: SightingSerializer.new(sighting, options)
  end
end
