class CreateTasklists < ActiveRecord::Migration[5.0]
  def change
    create_table :tasklists do |t|
      t.string :title
      t.text :description
      t.text :meta_description

      t.timestamps
    end
  end
end
