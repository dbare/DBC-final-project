class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :characters
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end