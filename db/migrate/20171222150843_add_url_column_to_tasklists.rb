class AddUrlColumnToTasklists < ActiveRecord::Migration[5.0]
  def change
    add_column :tasklists, :base_path, :string
  end
end
