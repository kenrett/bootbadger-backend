class AddEmailToBoots < ActiveRecord::Migration[5.1]
  def change
    add_column :boots, :email, :string
  end
end
