Spree::BaseHelper.module_eval do
  def link_to_cart(text = nil)
       text = text ? h(text) : Spree.t('cart')
       css_class = nil

       if simple_current_order.nil? or simple_current_order.item_count.zero?
         text = "<span><i class='fa fa-shopping-cart fa-lg'></i> <span class='visible-xs'> Shopping Cart</span></span>"
         css_class = 'btn btn-success navbar-btn'
       else
#         text = "<span><i class='fa fa-shopping-cart fa-lg'></i> <span class='badge'>#{text}: (#{simple_current_order.item_count})  <span class='amount'>#{simple_current_order.display_total.to_html}</span></span><span class='visible-xs'> Shopping Cart</span></span>"
         text = "<span><i class='fa fa-shopping-cart fa-lg'></i> <span class='badge'>#{simple_current_order.item_count}</span><span class='visible-xs'> Shopping Cart</span></span>"
         css_class = 'btn btn-success navbar-btn'
       end

       link_to text.html_safe, spree.cart_path, :class => "cart-info #{css_class}"
     end
     

     def flash_messages(opts = {})
       ignore_types = ["order_completed"].concat(Array(opts[:ignore_types]).map(&:to_s) || [])

       flash.each do |msg_type, text|
         unless ignore_types.include?(msg_type)
           concat(content_tag :div, text, class: "alert alert-warning text-center flash-margin")
         end
       end
       nil
     end
     
     def money(base_amount)
       Spree::Money.new(base_amount * Spree::CurrencyRate.find_by(base_currency: "USD", currency: current_currency).try(:exchange_rate), currency: current_currency) 
     end
     
end


  #{text}: (#{Spree.t('empty')})
  #{text}: (#{simple_current_order.item_count}) 
  #{simple_current_order.display_total.to_html}

