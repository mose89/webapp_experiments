class RenameUsersToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :adminusers
  end
end
