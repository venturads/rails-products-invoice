class Invoice < ActiveRecord::Base
    has_many :products
    belongs_to :product
end
