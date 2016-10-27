class CreatePhotoTaggedUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_tagged_users do |t|
      t.references :photo, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :photo_tagged_users, [:photo_id, :user_id], unique: true
  end
end
