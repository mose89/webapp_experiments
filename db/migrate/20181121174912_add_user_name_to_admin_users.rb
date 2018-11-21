class AddUserNameToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :adminusers, :username, :string
  end
end
