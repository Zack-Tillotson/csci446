class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :title
      t.string :author
      t.text :body
      t.date :create_date
      t.integer :edit_count

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
