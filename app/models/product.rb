class Product < ApplicationRecord
    has_many :comments
    validates :name, presence: true
    validates :price, presence: true
end
