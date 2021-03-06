class Admin::PagesController < Admin::BaseController
  before_action :set_page, only: [:edit, :update, :destroy]

  def index
    @pages = Page.order(:title).page params[:paging]
  end

  def new
    @page = Page.new
  end

  def edit
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to admin_pages_url, notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  def update
    if @page.update(page_params)
      redirect_to admin_pages_url, notice: 'Page was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @page.destroy
    redirect_to admin_pages_url, notice: 'Page was successfully destroyed.'
  end

  private

  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :meta_title, :meta_description, :content)
  end
end
