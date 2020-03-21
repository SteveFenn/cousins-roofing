class Contact < ApplicationRecord
  validates :name, presence: true
  validates :telephone, presence: true
  validates :email, presence: true, format: { with: Devise.email_regexp }
  validates :message, presence: true

  def deliver_email_later
    ContactMailer.notify(self).deliver_later
  end
end
