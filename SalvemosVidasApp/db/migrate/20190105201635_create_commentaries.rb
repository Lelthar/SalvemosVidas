class CreateCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaries do |t|
      t.string :datail
      t.references :user, foreign_key: true
      t.references :forum_post, foreign_key: true

      t.timestamps
    end
  end
end
