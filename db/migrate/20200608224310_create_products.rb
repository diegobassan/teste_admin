class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :minutes
      t.boolean :online

      t.timestamps
    end
  end
end
