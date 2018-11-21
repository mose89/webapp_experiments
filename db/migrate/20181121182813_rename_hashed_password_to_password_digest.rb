class RenameHashedPasswordToPasswordDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :adminusers, :hashed_password, :password_digest
  end
end
