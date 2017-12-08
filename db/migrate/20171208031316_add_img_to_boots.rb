class AddImgToBoots < ActiveRecord::Migration[5.1]
  def change
    add_column :boots, :img_url, :text
  end
end
