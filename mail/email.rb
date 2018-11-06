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
    puts "Date:    #{@headers[:date]}"
    puts "From:    #{@headers[:from]}"
    puts "Subject: #{@subject}"
end
end
