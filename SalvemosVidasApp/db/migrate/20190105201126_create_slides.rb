class CreateSlides < ActiveRecord::Migration[5.2]
  def change
    create_table :slides do |t|
      t.string :title
      t.string :type
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
