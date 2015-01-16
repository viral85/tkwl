# This migration comes from spree_multi_domain (originally 20130308084714)
class AddLogoToStores < ActiveRecord::Migration
  def self.up
    change_table :spree_stores do |t|
       if !column_exists?(:spree_stores, :logo_file_name)
         t.string :logo_file_name
       end
    end
  end

  def self.down
    change_table :spree_stores do |t|
      t.remove :logo_file_name
    end
  end
end
