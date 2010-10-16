class User < ActiveRecord::Base
	# Using paperclip to attach files
	has_attached :upload
end
