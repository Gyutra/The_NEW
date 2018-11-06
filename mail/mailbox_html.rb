require "./mailbox"

class MailboxTextFormatter

end

emails = [
  Email.new("Homework this week", { :date => "28-10-28", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "28-10-28", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "28-10-28", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format
