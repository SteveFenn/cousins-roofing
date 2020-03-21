class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      @contact.deliver_email_later
      redirect_to root_path, notice: 'Message successfully sent.'
    else
      return render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :telephone, :email, :message)
  end
end
