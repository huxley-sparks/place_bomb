class DataFile < ActiveRecord::Base
	def self.save(upload)
		name = upload['datafile'].original_filename
		directory = "public/data"

		# Create the file path
		path = file.join(directory, name)

		# Write the file
		File.open(path, "wb") {|f| f.write(upload['datafile'].read) }
	end
end
