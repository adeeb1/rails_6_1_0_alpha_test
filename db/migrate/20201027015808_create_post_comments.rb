class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.integer :post_id, null: false
      t.integer :comment_id, null: false

      t.timestamps
    end

    add_index :post_comments, [ :post_id, :comment_id ], unique: true
  end
end
