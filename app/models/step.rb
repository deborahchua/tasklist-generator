class Step < ApplicationRecord
  belongs_to :tasklist
  validates :title, presence: true, length { minimum: 5 }
end
