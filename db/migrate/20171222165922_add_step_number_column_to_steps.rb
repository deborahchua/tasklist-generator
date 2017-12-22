class AddStepNumberColumnToSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :step_number, :integer
  end
end
