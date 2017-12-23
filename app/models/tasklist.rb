class Tasklist < ApplicationRecord
  has_many :steps

  has_many :contents, through: :steps

  validates :title, presence: true
  validates :base_path, presence: true
  validates :description, presence: true
end
