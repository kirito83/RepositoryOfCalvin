require "google_drive"

session = GoogleDrive::Session.from_config("config.json")

ws = session.spreadsheet_by_key("12nis2xl4eGThpu_8jfnUzplEOzQoqIKi9L2Aw7NfaM4").worksheets[0]

ws[2, 1] = "foo"
ws[2, 2] = "bar"
ws.save
