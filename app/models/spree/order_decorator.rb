Spree::Order.class_eval do

 after_commit :wombat_push_spree_orders, on: [:create, :update]
 
 def wombat_push_spree_orders
    Spree::Wombat::Client.push_batches("Spree::Order")
  end



end