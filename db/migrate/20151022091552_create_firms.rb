class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :ikod
      t.string :name
      t.string :n_tel
      t.integer :rahunok
      t.integer :mfo
      t.string :name_bank
      t.string :director
      t.string :string
      t.timestamps null: false
    end
  end
end
