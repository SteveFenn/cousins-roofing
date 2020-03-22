class Testimonial < ApplicationRecord
  has_rich_text :content

  validates :author, presence: true
end
