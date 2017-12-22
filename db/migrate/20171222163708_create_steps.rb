class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.string :title
      t.text :description
      t.string :optional
      t.references :tasklist, foreign_key: true

      t.timestamps
    end
  end
end
