require "./email"

class Mailbox
def initialize(name, emails)
    @name = name
    @emails = emails
  end

  def name
    @name
  end

  def emails
    @emails
  end
  def result
    emails.each do |email|
    puts "Date:    #{email.date}"
    puts "From:    #{email.from}"
    puts "Subject: #{email.subject}"
puts
  end
end
end
