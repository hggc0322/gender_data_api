class Region < ApplicationRecord
  has_many :companies, dependent: :destroy
end
