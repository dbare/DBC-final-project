class ModifyEvaluations < ActiveRecord::Migration[5.0]
  def change
  	remove_column :evaluations, :contract_id, :integer

  	add_column :evaluations, :author_id, :integer
  	add_column :evaluations, :subject_id, :integer

  end
end
