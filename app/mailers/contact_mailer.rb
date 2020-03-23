class ContactMailer < ApplicationMailer
  def notify(contact)
    @contact = contact
    mail(
      to: Rails.application.credentials.dig(:to_email),
      subject: 'New website contact request received'
    )
  end
end
