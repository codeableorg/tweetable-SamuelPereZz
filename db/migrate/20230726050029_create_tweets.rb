class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :body, null: false, limit: 140
      t.integer :replies_count, default: 0
      t.integer :likes_count, default: 0
      t.integer :replied_to

      t.timestamps
    end
  end
end
