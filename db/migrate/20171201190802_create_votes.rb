class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :boot, foreign_key: true
      t.references :slogan, foreign_key: true

      t.timestamps
    end
  end
end
