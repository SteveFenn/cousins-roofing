class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    return render :new, status: :unprocessable_entity unless @contact.valid?
    @contact.deliver_email_later
    render :create, status: :created
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :telephone, :email, :message)
  end
end
