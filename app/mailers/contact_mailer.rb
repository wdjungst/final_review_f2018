class ContactMailer < ApplicationMailer

  def info(data)
    @name = data[:name]
    @email = data[:email]
    @phone = data[:phone] || 'Phone not included'
    @body = data[:body]

    mail to: ENV['MAIL_FROM'], subject: "#{@name} has requested info"
  end
end
