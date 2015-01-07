Spree::Wombat::Config.configure do |config|

  config.connection_token = ENV['WOMBAT_TOKEN']
  config.connection_id = ENV['WOMBAT_ID']

   config.push_objects = ["Spree::Order", "Spree::Product", "Spree:StockItem", "Spree::User"]
   config.payload_builder = {
     # By default we filter orders to only push if they are completed.  You can remove the filter to send incomplete orders as well.
     "Spree::Order" => { serializer: "Spree::Wombat::OrderSerializer", root: "orders", filter: "complete" },
     "Spree::Product" => { serializer: "Spree::Wombat::ProductSerializer", root: "products" },
     "Spree::StockItem" => { serializer: "Spree::Wombat::StockItemSerializer", root: "inventories" },
     "Spree::User" => { serializer: "UserSerializer", root: "customers" }
   }
  config.push_url = "https://push.wombat.co"

end

payload_builder = Spree::Wombat::Config[:payload_builder]
Spree::Wombat::Config[:payload_builder] = payload_builder
        