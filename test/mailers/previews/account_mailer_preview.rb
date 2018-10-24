# Preview all emails at http://localhost:3000/rails/mailers/account_mailer
class AccountMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/account_mailer/overdrawn
  def overdrawn
    AccountMailer.overdrawn
  end

end
