class CreateJoinTableShopListProduct < ActiveRecord::Migration[6.0]
  def change
    create_join_table :shop_lists, :products do |t|
      t.index [:shop_list_id, :product_id], unique: true
      t.index [:product_id, :shop_list_id]
    end
  end
end
