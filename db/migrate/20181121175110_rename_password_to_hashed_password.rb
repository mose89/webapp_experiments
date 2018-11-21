class RenamePasswordToHashedPassword < ActiveRecord::Migration[5.2]
  def change
    rename_column :adminusers, :password, :hashed_password
  end
end
