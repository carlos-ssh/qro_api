class Api::V1::HomeController < ApplicationController
  def index
    render json: {
      message: 'Welcome to Queretaro API!',
    }
  end
end
