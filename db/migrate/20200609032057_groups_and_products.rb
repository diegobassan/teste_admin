class GroupsAndProducts < ActiveRecord::Migration[6.0]
  create_table :groups_products, id: false do |t|
    t.references :product
    t.references :group
  end
  add_index :groups_products, [:product_id, :group_id], unique: true
  add_index :groups_products, [:group_id, :product_id], unique: true
end
