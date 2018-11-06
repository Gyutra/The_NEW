require './email'

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
      mailbox.emails.each do 
      puts "Date:    #{@headers[:date]}"
      puts "From:    #{@headers[:from]}"
      puts "Subject: #{@subject}"
      puts
    end

  end
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)

mailbox.result
