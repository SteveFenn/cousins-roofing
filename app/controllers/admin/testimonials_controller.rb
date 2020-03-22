class Admin::TestimonialsController < Admin::BaseController
  before_action :set_testimonial, only: [:edit, :update, :destroy]

  def index
    @testimonials = Testimonial.order(created_at: :desc).page params[:paging]
  end

  def new
    @testimonial = Testimonial.new
  end

  def edit
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)

    if @testimonial.save
      redirect_to admin_testimonials_url, notice: 'Testimonial was successfully created.'
    else
      render :new
    end
  end

  def update
    if @testimonial.update(testimonial_params)
      redirect_to admin_testimonials_url, notice: 'Testimonial was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @testimonial.destroy
    redirect_to admin_testimonials_url, notice: 'Testimonial was successfully destroyed.'
  end

  private

  def set_testimonial
    @testimonial = Testimonial.find(params[:id])
  end

  def testimonial_params
    params.require(:testimonial).permit(:author, :content)
  end
end
