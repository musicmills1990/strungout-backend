class AddStringCounterToStringPack < ActiveRecord::Migration[5.2]
  def change
    add_column :string_packs, :low_e_string_counter, :integer, default: 0
    add_column :string_packs, :a_string_counter, :integer, default: 0
    add_column :string_packs, :d_string_counter, :integer, default: 0
    add_column :string_packs, :g_string_counter, :integer, default: 0
    add_column :string_packs, :b_string_counter, :integer, default: 0
    add_column :string_packs, :high_e_string_counter, :integer, default: 0
  end
end
