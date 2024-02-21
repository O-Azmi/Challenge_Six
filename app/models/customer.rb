class Customer < ApplicationRecord

    #Add validation
    validates :full_name, :phone_number, :notes, presence: true

    has_one_attached :image


    def self.ransackable_attributes(auth_object = nil)
      %w[full_name phone_number email_address notes image]
    end
  end