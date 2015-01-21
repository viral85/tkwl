# This migration comes from spree_multi_domain (originally 20110601125650)
class RemoveDatetimeColumnsFromProductsStores < ActiveRecord::Migration
  def self.up
    change_table :products_stores do |t|
      if column_exists?(:products_stores, :created_at)
        t.remove :created_at
      end
      if column_exists?(:products_stores, :updated_at)
        t.remove :updated_at
      end
    end
  end

  def self.down
    change_table :products_stores do |t|
      t.timestamps
    end
  end
end
