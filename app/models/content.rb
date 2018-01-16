class Content < ApplicationRecord
  belongs_to :step

  validates :content_type, presence: true
  validates :text, presence: true

  default_scope { order("position ASC") }
end
