class Step < ApplicationRecord
  belongs_to :tasklist

  has_many :contents, dependent: :destroy

  # accepts_nested_attributes_for :contents
  validates :step_number, presence: true
  validates :title, presence: true
end
