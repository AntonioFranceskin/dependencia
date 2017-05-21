class Ship < ApplicationRecord
  belongs_to :company
  has_many :container, dependent: :destroy
end
