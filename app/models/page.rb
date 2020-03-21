class Page < ApplicationRecord
  extend FriendlyId

  friendly_id :title
  has_rich_text :content

  validates :title, presence: true
  validates :slug, presence: true
end
