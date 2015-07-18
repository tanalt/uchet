class ChangeIkod < ActiveRecord::Migration
  def change
    change_column(:klients, :ikod, :integer, :limit =>10)
  end
end
