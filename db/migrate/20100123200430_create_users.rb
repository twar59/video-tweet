class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username # nick
      t.string :email
      t.string :twitter_id
      t.string :name
      t.text   :bio
      t.boolean   :is_admin
      t.string :persistence_token
      t.string :crypted_password
      t.string :password_salt
      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end
end
