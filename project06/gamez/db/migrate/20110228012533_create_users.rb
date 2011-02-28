class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name_first
      t.string :name_last
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
