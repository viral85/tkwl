module Spree
  Order.class_eval do
    before_validation :clone_billing_address
    
    def clone_billing_address
      if ship_address and self.bill_address.nil?
        self.bill_address = ship_address.clone
      elsif ship_address
        self.bill_address.attributes = ship_address.attributes.except('id', 'updated_at', 'created_at')
      end
      true
    end

  end
end