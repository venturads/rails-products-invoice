class Product < ActiveRecord::Base
    validates :model, presence: true
    validates :sku, presence: true
    validates :serial_number, presence: true
    validates :cost_price, presence: true
    validates :price, presence: true
    validates :inventory, presence: true
    validates :vendor, presence: true
    belongs_to :user
    has_many :users
    has_many :invoices
end
