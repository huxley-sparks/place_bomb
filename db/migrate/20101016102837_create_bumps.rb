class CreateBumps < ActiveRecord::Migration
  def self.up
    create_table :bumps do |t|
      t.string :owner
      t.string :title
      t.text	:description
      t.datetime :timestamp
      t.string :location
      t.boolean :prviate
      t.string :filetype

      t.timestamps
    end
  end

  def self.down
    drop_table :bumps
  end
end
