class CreateTovars < ActiveRecord::Migration
  def change
    create_table :tovars do |t|
      t.integer :tovar
      t.float :price
      t.datetime :prihod
      t.datetime :rashod
      t.boolean :spisano #0 списано, 1- не списано
      t.string :ser_nom
      t.timestamps null: false
    end
  end
end
