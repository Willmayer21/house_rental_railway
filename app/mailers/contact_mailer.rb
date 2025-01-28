class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    mail(
      to: ENV['GMAIL_INBOX'],
      from: @contact.email,
      subject: "New Contact Form Message from #{@contact.name}"
    )
  end
end
