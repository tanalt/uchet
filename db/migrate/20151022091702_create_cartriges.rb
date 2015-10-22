class CreateCartriges < ActiveRecord::Migration
  def change
    create_table :cartriges do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
