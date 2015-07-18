class CreateKlients < ActiveRecord::Migration
  def change
    create_table :klients do |t|
      t.string :fio
      t.string :tel
      t.integer :ikod
      t.timestamps null: false
    end
  end
end
