# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact_email
    ContactMailer.contact_email("elena@at.com", "Elena Atanasova", "078880786666", @message = "Hello")
  end

end
