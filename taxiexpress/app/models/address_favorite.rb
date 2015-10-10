class AddressFavorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :address
  
  validates :address_id, presence: true
end
