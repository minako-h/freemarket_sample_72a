class DeliveryDestination < ApplicationRecord
  belongs_to :user, optional: true
 
    validates :destination_family_name, presence: true
    validates :destination_first_name, presence: true
    validates :destination_family_name_kana, presence: true
    validates :destination_first_name_kana, presence: true
    validates :postal_code, presence: true
    validates :prefecture, presence: true
    validates :city, presence: true
    validates :house_number, presence: true

  # with_options presence: true do
  #   validates :destination_family_name
  #   validates :destination_first_name
  #   validates :destination_family_name_kana
  #   validates :destination_first_name_kana
  #   # validates :postal_code, format: {with: /\A\d{3}[-]\d{4}\z/}
  #   validates :prefecture
  #   validates :city
  #   validates :house_number
  # end

end
