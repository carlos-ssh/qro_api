class Api::V1::HomeController < ApplicationController
  def index
    render json: { status: 'Welcome to Queretaro API!' }
  end
end
