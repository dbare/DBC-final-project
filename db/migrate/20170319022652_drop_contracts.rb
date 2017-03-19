class DropContracts < ActiveRecord::Migration[5.0]
  def change
  	drop_table :contracts
  end
end
