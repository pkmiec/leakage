class Create < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.string :first
      t.string :last
      
      t.timestamps
    end

    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :author_id

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
    drop_table :authors
  end
end
