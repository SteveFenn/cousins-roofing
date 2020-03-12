class ContactMailer < ApplicationMailer
  def notify(contact_json)
    @contact = JSON.parse(contact_json)
    mail(to: @contact['email'], subject: 'New website contact request received')
  end
end
