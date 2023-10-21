class Api::V1::HealthCheckController < ApplicationController
  def index
    current_time = Time.zone.now
      render json: {
        message: 'helth_check OK',
        timestamp: current_time
      }, status: :ok
  end
end
