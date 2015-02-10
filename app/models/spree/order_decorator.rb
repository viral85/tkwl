Spree::Order.class_eval do
  
 before_save :set_langugate
 after_commit :wombat_push_spree_orders, on: [:create, :update]
 
 def wombat_push_spree_orders
    Spree::Wombat::Client.push_batches("Spree::Order")
  end

def set_langugate
    self.language = I18n.locale
 end

 #confirm state has been removed to simplify checkout
 checkout_flow do
   go_to_state :address
   go_to_state :delivery
   go_to_state :payment, if: ->(order) { order.payment_required? }
   #go_to_state :confirm, if: ->(order) { order.confirmation_required? }
   go_to_state :complete
   remove_transition from: :delivery, to: :confirm
 end
 
 #automatically pass delivery step if there is only one delivery option
   state_machine do
     after_transition :to => :delivery do |order|
       if order.shipments.all? { |shipment| shipment.shipping_rates.count == 1 }
         order.shipments.each do |shipment|
           shipment.selected_shipping_rate_id = shipment.shipping_rates.first.id
         end
         order.next
       end
     end
   end



end