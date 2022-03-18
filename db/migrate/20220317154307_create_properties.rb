class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :description
      t.decimal :price
      t.integer :rooms
      t.integer :bathrooms
      t.integer :meters
      t.integer :garage
      t.string :image
      t.boolean :for_sale, default: true
      t.string :status, default: "disponible"
      t.datetime :available_date, precision: nil
      t.index ["user_id"], name: "index_properties_on_user_id"

      t.timestamps
    end
  end
end
