class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :acses #0 - не має відношення до картриджів
      t.string :od_vim
      t.timestamps null: false
    end
  end
end
