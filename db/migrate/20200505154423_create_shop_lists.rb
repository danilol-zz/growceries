class CreateShopLists < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_lists do |t|
      t.string :name
      t.boolean :active
      t.text :comment

      t.timestamps
    end
  end
end
