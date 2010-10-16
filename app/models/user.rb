class User < ActiveRecord::Base
	# Using paperclip to attach files
	has_attached_file :upload

	# download files
	def get_bomb
	#	send_file "public/data/#{bomb_name}", x_sendfile => true
		send_file "public/data/testing.txt", x_sendfile => true
	end
end
