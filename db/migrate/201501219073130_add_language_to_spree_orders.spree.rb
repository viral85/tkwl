class AddLanguageToSpreeOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :language, :string
  end
end
