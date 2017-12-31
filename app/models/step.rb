class Step < ApplicationRecord
  belongs_to :tasklist
  
  has_many :contents, dependent: :destroy

  # accepts_nested_attributes_for :contents
end
