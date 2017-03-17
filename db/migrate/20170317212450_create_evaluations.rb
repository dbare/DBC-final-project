class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.text :review
      t.integer :rating
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end