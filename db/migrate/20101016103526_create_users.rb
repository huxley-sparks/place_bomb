class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :upload
      t.string :download

	  # upload using paperclip 
	  t.string 	:upload_file_name
	  t.string 	:upload_content_type
	  t.integer	:upload_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
