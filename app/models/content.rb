class Content < ApplicationRecord
  belongs_to :step

  validates :content_type, presence: true
  validates :text, presence: true
end
