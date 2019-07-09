class CreateGuitars < ActiveRecord::Migration[5.2]
  def change
    create_table :guitars do |t|
      t.string :guitar_type
      t.string :brand
      t.string :model
      t.string :color
      t.integer :user_id
      t.timestamps
    end
  end
end
