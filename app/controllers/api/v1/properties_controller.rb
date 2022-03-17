class Api::V1::PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show update destroy ]

  def index
    @properties = Property.all

    render json: @properties
  end

  def latest
    @properties_for_sale = Property.where(for_sale: true)
    @properties_for_rent = Property.where(for_sale: false)

    render json: { for_sale: @properties_for_sale, for_rent: @properties_for_rent }
  end

  def show
    render json: @property
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      render json: @property, status: :created, location: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  def update
    if @property.update(property_params)
      render json: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @property.destroy

    head :no_content, status: :ok
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:account_id, :name, :address, :description, :price, :rooms, :bathrooms, :meters, :garage, :image, :for_sale, :status)
    end
end
