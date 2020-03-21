class Admin::ContactsController < Admin::BaseController
  def index
    @contacts = Contact.order(created_at: :desc).page params[:paging]
  end

  def show
    @contact = Contact.find(params[:id])
  end
end
