class ChangeUserAddPassword < ActiveRecord::Migration
  def self.up
    add_column :users, :password, :string, :null => false, :default => ""
  end

  def self.down
    remove_column :users, :password
  end
end
