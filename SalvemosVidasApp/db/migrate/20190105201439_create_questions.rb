class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :description
      t.string :correct
      t.string :incorrect1
      t.string :incorrect2
      t.string :incorrect3
      t.references :practice, foreign_key: true

      t.timestamps
    end
  end
end
