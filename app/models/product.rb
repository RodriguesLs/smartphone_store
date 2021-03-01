class Product < ApplicationRecord
  has_many :sells, dependent: :destroy
end
