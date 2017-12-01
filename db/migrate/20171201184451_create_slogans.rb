class CreateSlogans < ActiveRecord::Migration[5.1]
  def change
    create_table :slogans do |t|
      t.string :body, null: false
      t.references :boot

      t.timestamps
    end
  end
end
