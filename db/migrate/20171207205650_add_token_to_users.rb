class AddTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :boots, :token, :string
  end
end
