class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :body, null: false, limit: 140
      t.integer :replies_count, default: 0
      t.integer :likes_count, default: 0
      t.references :user, null: false, foreign_key: true
      t.integer :replied_to, default: 0

      t.timestamps
    end
  end
end
