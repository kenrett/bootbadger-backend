class AddPasswordDigestToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :boots, :password_digest, :string
  end
end
