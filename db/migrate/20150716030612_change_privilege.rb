class ChangePrivilege < ActiveRecord::Migration
  def change
    change_column :users, :privilege, :boolean
  end
end
