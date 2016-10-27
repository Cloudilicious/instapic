class CreateUserFollowerRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :user_follower_relationships do |t|
      t.references :user, foreign_key: true
      t.references :follower, foreign_key: true
      # t.integer :follower_id, foreign_key: { to_table: :users }

      t.timestamps
    end
    # make the user_id and follower_id relationship unique
    add_index :user_follower_relationships, [:user_id, :follower_id], unique: true
  end
end
