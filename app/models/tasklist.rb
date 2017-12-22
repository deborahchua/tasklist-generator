class Tasklist < ApplicationRecord
  has_many :steps
  validates :title, presence: true, length: { minimum: 5 }
  validates :base_path, presence: true
  validates :description, presence: true, length: {minimum: 10}
end
