class CreateAcsesories < ActiveRecord::Migration
  def change
    create_table :acsesories do |t|
      t.string :name
      t.integer :typ
      t.integer :cart
      t.timestamps null: false
    end
  end
end
