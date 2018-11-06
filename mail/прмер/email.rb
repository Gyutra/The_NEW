class Email
  def initialize(subject, headers)
    @subject = subject
    @headers = headers
  end

  def subject
    @subject
  end

  def date
    @headers[:date]
  end

  def from
    @headers[:from]
  end

  def result
    puts "Date:    #{date}"
    puts "From:    #{from}"
    puts "Subject: #{subject}"
  end
end

# email = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })
# email.result
