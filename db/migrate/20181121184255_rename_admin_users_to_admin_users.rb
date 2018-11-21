class RenameAdminUsersToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :adminusers, :admin_users
  end
end
