class AddPibToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pib, :string
    add_column :users, :n_tel, :string
  end
end
