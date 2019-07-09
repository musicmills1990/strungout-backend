class CreateStringPacks < ActiveRecord::Migration[5.2]
  def change
    create_table :string_packs do |t|
      t.string :guage
      t.string :brand
      t.string :model
      t.float :price
      t.integer :user_id
      t.timestamps
    end
  end
end
