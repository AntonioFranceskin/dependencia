class Company < ApplicationRecord
	has_many :ships, dependent: :destroy
	has_many :container, through: :ships, dependent: :destroy
end
