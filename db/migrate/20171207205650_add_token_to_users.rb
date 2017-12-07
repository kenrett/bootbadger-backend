class AddTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    update_table :users, :token, :string
  end
end
