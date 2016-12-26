class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :uid
      t.integer :channel_id
      t.integer :reply_id ,default: 0
      t.text :content 
      t.string :image
      t.integer :favorite
      t.integer :status

      t.timestamps null: false
    end
  end
end
