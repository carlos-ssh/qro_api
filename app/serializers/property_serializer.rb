class PropertySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :address, :description, :price, :rooms, :bathrooms, :meters, :garage, :image, :for_sale, :status, :available_date
end


