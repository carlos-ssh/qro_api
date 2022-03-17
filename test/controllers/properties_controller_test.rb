require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url, as: :json
    assert_response :success
  end

  test "should create property" do
    assert_difference("Property.count") do
      post properties_url, params: { property: { account_id: @property.account_id, address: @property.address, bathrooms: @property.bathrooms, description: @property.description, for_sale: @property.for_sale, garage: @property.garage, image: @property.image, meters: @property.meters, name: @property.name, price: @property.price, rooms: @property.rooms, status: @property.status } }, as: :json
    end

    assert_response :created
  end

  test "should show property" do
    get property_url(@property), as: :json
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { account_id: @property.account_id, address: @property.address, bathrooms: @property.bathrooms, description: @property.description, for_sale: @property.for_sale, garage: @property.garage, image: @property.image, meters: @property.meters, name: @property.name, price: @property.price, rooms: @property.rooms, status: @property.status } }, as: :json
    assert_response :success
  end

  test "should destroy property" do
    assert_difference("Property.count", -1) do
      delete property_url(@property), as: :json
    end

    assert_response :no_content
  end
end
