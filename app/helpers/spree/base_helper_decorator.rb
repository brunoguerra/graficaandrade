Spree::BaseHelper.class_eval do 
	
	def link_to_cart_count_items
      if current_order.nil? or current_order.line_items.empty?
        count_item = 0
      else
        count_item = current_order.item_count
      end

        text = "<span class='amount'>Carrinho</span><br>
        <span id='item_count'>#{count_item} item#{count_item > 1 ? 's' : '' }</span>".html_safe
        link_to text, spree.cart_path, :class => 'full'
    end

    def options_from_collection_for_select_with_attributes(collection, value_method, text_method, attr_name, attr_field, selected = nil)
      options = collection.map do |element|
        [element.send(text_method), element.send(value_method), attr_name => element.send(attr_field)]
      end
      selected, disabled = extract_selected_and_disabled(selected)
      select_deselect = {}
      select_deselect[:selected] = extract_values_from_collection(collection, value_method, selected)
      select_deselect[:disabled] = extract_values_from_collection(collection, value_method, disabled)

      options_for_select(options, select_deselect)
    end

end