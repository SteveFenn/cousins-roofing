class ContactMailer < ApplicationMailer
  def notify(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'New website contact request received')
  end
end
