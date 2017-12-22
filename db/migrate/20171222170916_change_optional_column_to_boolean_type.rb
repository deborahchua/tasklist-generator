class ChangeOptionalColumnToBooleanType < ActiveRecord::Migration[5.0]
  def change
    remove_column :steps, :optional
    add_column :steps, :optional, :boolean
  end
end
