Spree::Wombat::Config.configure do |config|

  config.connection_token = "cc1ed414cd97e7602f40b58814460ab856cd676e7b7aa637"
  config.connection_id = "549d1d9e736d6161074d0000"

  # config.push_objects = ["Spree::Order", "Spree::Product"]
  # config.payload_builder = {
  #   # By default we filter orders to only push if they are completed.  You can remove the filter to send incomplete orders as well.
  #   "Spree::Order" => { serializer: "Spree::Wombat::OrderSerializer", root: "orders", filter: "complete" },
  #   "Spree::Product" => { serializer: "Spree::Wombat::ProductSerializer", root: "products" },
  #   "Spree::StockItem" => { serializer: "Spree::Wombat::StockItemSerializer", root: "inventories" }
  # }
  #config.push_url = "https://push.wombat.co"

end
