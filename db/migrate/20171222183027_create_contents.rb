class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :type
      t.string :url
      t.text :text
      t.string :context
      t.string :style
      t.references :step, foreign_key: true

      t.timestamps
    end
  end
end
