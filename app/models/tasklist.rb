class Tasklist < ApplicationRecord
  has_many :steps

  validates :title, presence: true
  validates :base_path, presence: true
  validates :description, presence: true
end
