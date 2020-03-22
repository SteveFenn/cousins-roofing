class Admin::FeatureSlidesController < Admin::BaseController
  before_action :set_slide, only: [:edit, :update, :destroy]

  def index
    @slides = FeatureSlide.order(:title).page params[:paging]
  end

  def new
    @slide = FeatureSlide.new
  end

  def edit
  end

  def create
    @slide = FeatureSlide.new(slide_params)

    if @slide.save
      redirect_to admin_feature_slides_url, notice: 'Slide was successfully created.'
    else
      render :new
    end
  end

  def update
    if @slide.update(slide_params)
      redirect_to admin_feature_slides_url, notice: 'Slide was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @slide.destroy
    redirect_to admin_feature_slides_url, notice: 'Slide was successfully destroyed.'
  end

  private

  def set_slide
    @slide = FeatureSlide.find(params[:id])
  end

  def slide_params
    params.require(:feature_slide).permit(:title, :image)
  end
end
