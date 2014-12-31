Deface::Override.new(:virtual_path => 'spree/shared/_products',
  :name => 'override_shared_products',
  :replace => "[data-hook='products_list_item']",
  :text => "<li id='product_<%= product.id %>' class='columns three <%= cycle('alpha', 'secondary', '', 'omega secondary', :name => 'classes') %>' data-hook='products_list_item' itemscope itemtype='http://schema.org/Product'>
      <% cache(@taxon.present? ? [I18n.locale, current_currency, @taxon, product] : [I18n.locale, current_currency, product]) do %>
        <div class='product-image'>
          <%= link_to small_image(product, :itemprop => 'image'), url, :itemprop => 'url' %>
        </div>
        <%= link_to truncate(product.name, :length => 50), url, :class => 'info', :itemprop => 'name', :title => product.name %>
        <span itemprop='offers' itemscope itemtype='http://schema.org/Offer'>
         <span class='price selling' itemprop='price'><%= product.display_price %>
        </span>
      <% end %>
    </li>
  ")