# This migration comes from spree_static_content (originally 20141112114424)
class AddLayoutToTranslatableFields < ActiveRecord::Migration
  def up
    Spree::Page.add_translation_fields! layout: :string
  end

  def down
    remove_column :spree_page_translations, :layout
  end
end
