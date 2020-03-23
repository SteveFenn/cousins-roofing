class WelcomeController < ApplicationController
  def index
    @slides = FeatureSlide.order(created_at: :desc)
    @testimonials = Testimonial.order(created_at: :desc)
  end
end
