class AddUploadToUsers < ActiveRecord::Migration
  def self.up
	  add_column :users, :upload_file_name, :string			# original filename
	  add_column :users, :upload_content_type, :string		# file type
	  add_column :users, :upload_file_size,		:integer	# file size
  end

  def self.down
	  remove_column :users, :upload_file_name
	  remove_column :users, :upload_content_type
	  remove_column :users, :upload_file_size
  end
end
