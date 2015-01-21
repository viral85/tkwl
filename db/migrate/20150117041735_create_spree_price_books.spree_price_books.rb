# This migration comes from spree_price_books (originally 20140219094775)
class CreateSpreePriceBooks < ActiveRecord::Migration
  def change
    if !table_exists?("spree_price_books")
      create_table :spree_price_books do |t|
        t.datetime :active_from
        t.datetime :active_to
        t.string :currency
        t.boolean :default, default: false, null: false
        t.boolean :discount, default: false, null: false
        t.string :name
        t.integer :parent_id
        t.float :price_adjustment_factor
        t.integer :priority, default: 0, null: false
        t.belongs_to :role
        t.belongs_to :store
        t.integer :lft
        t.integer :rgt
        t.integer :depth
  
        t.timestamps
      end
    end
    add_index :spree_price_books, :active_from unless index_exists?(:spree_price_books, :active_from)
    add_index :spree_price_books, :active_to unless index_exists?(:spree_price_books, :active_to)
    add_index :spree_price_books, :currency unless index_exists?(:spree_price_books, :currency)
    add_index :spree_price_books, :default unless index_exists?(:spree_price_books, :default)
    add_index :spree_price_books, :depth unless index_exists?(:spree_price_books, :depth)
    add_index :spree_price_books, :parent_id unless index_exists?(:spree_price_books, :parent_id)
    add_index :spree_price_books, :role_id unless index_exists?(:spree_price_books, :role_id)
    add_index :spree_price_books, :store_id unless index_exists?(:spree_price_books, :store_id)
    add_index :spree_price_books, :lft unless index_exists?(:spree_price_books, :lft)
    add_index :spree_price_books, :rgt unless index_exists?(:spree_price_books, :rgt)

    add_column :spree_prices, :price_book_id, :integer unless column_exists?(:spree_prices, :price_book_id)
    add_index :spree_prices, :price_book_id unless index_exists?(:spree_prices, :price_book_id)

    add_column :spree_line_items, :list_price, :decimal, :precision => 10, :scale => 2, :default => 0.0 unless column_exists?(:spree_line_items, :list_price)
  end
end
