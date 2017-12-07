class AddSubmmitedByToSlogans < ActiveRecord::Migration[5.1]
  def change
    add_column :slogans, :submitted_by, :text
  end
end
