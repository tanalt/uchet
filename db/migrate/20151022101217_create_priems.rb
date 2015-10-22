class CreatePriems < ActiveRecord::Migration
  def change
    create_table :priems do |t|
      t.integer :klient
      t.integer :cartrige
      t.boolean :zrobl
      t.datetime :d_zrobl
      t.boolean :vidano
      t.timestamps null: false
    end
  end
end
