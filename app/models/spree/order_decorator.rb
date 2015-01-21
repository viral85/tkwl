Spree::Order.class_eval do
  
 before_save :set_langugate
 after_commit :wombat_push_spree_orders, on: [:create, :update]
 
 def wombat_push_spree_orders
    Spree::Wombat::Client.push_batches("Spree::Order")
  end

def set_langugate
    self.language = I18n.locale
 end


end