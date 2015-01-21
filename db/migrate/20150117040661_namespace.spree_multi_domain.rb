# This migration comes from spree_multi_domain (originally 20120223183401)
class Namespace < ActiveRecord::Migration
  def up
    if !table_exists?("spree_products_stores")
      rename_table :products_stores, :spree_products_stores
    end
  end

  def down
    rename_table :spree_products_stores, :products_stores
  end
end
