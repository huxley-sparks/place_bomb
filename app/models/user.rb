class User < ActiveRecord::Base
	# Using paperclip to attach files
	has_attached_file :upload
end
