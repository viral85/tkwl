# This migration comes from spree_multi_domain (originally 20130412212659)
class AddSpreePromotionRulesStores < ActiveRecord::Migration
  def change
    if !table_exists?("spree_promotion_rules_stores")
      create_table :spree_promotion_rules_stores, :id => false do |t|
        t.references :promotion_rule
        t.references :store
      end
    end
  end
end
