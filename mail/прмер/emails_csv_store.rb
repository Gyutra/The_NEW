require "csv"
require "./mailbox_html"

class EmailsCsvStore
  def initialize(filename)
    @csv = CSV.new(File.read(filename), headers: true)
  end

  def read
    @csv.map do |r|
      row = r.to_hash
      Email.new(row['Subject'], from: row['From'], date: row['Date'])
    end
  end
end

store = EmailsCsvStore.new('emails.csv')
emails = store.read
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox)

File.write("emails.html", formatter.format)

p "Done! Open emails.html file via browser."
