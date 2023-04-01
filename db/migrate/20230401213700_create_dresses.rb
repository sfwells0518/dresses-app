class CreateDresses < ActiveRecord::Migration[7.0]
  def change
    create_table :dresses do |t|
      t.string :material
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
