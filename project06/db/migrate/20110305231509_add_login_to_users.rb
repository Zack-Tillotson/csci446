class AddLoginToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :login, :string
    remove_column :users, :username
  end

  def self.down
    remove_column :users, :login
    add_column :users, :username, :string
  end
end
