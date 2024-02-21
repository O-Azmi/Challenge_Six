class Customer < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
      %w[full_name phone_number email_address notes]
    end
  end