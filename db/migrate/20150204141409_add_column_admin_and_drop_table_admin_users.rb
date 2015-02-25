class AddColumnAdminAndDropTableAdminUsers < ActiveRecord::Migration
  def change
    drop_table :admin_users
    add_column :users, :admin, :boolean, default: false
  end

end
