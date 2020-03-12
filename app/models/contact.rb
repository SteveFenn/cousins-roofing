class Contact
  include ActiveModel::Model
  attr_accessor :name, :telephone, :email, :message
  validates_presence_of :name, :telephone, :email, :message

  def deliver_email_later
    ContactMailer.notify(self.to_json).deliver_later
  end
end
