class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :player_type
      t.string :plan
      t.string :pay_schedule

      t.timestamps
    end
  end
end
