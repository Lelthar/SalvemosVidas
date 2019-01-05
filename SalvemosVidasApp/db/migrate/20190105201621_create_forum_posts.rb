class CreateForumPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_posts do |t|
      t.string :title
      t.string :datail
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
