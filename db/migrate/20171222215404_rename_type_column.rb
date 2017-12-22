class RenameTypeColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :contents, :type
    add_column :contents, :content_type, :string
  end
end
