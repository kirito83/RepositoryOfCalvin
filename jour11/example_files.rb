require "google_drive"

session = GoogleDrive::Session.from_config("config.json")

session.files.each do |file|
   p file.title
end

session.upload_from_file("/path/to/hello.txt", "hello.txt", convert: false)

file = session.file_by_title("hello.txt")
file.download_to_file("/path/to/hello.txt")

file.update_from_file("/path/to/hello.txt")
