Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
					 :name => "background",
					 :insert_bottom => "head",
					 :text =>"
					 	<style>

						  <% if current_page?(root_path) %>
						    body{
						      background-image: url(/bg-andrade.png), url(/rodape.png);
						    }
						  <% else %>
						      body{
						        background-image: url(/fd-internas.jpg), url(/rodape.png);
						      }
						  <% end %>
						  body{
						  	background-position: left top, left bottom;
						  	background-size: auto auto, auto 177px;
						  }
						</style>")

Deface::Override.new(:virtual_path => "spree/shared/_header",
					:name => "change_logo",
					:replace_contents => "#logo",
					:text => "<%= link_to image_tag('logo-andrade.png'), root_path %>")


Deface::Override.new(:virtual_path => "spree/shared/_header",
					:name => "involve_logo",
					:surround => "#logo",
					:text => "
					<div id='main-menu'>
						<%= render_original %>
					</div>")

Deface::Override.new(:virtual_path => "spree/shared/_header",
					:name => "login_row",
					:insert_before => "#logo",
					:text => "
					<div id='login-row'>
						<div id='login-bar'>
							<div class='access'>
								<% if current_user %>
								  <li><%= link_to t(:my_account), spree.account_path %></li>
								  <li><%= link_to t(:logout), spree.destroy_user_session_path %></li>
								<% else %>
								  <li id='link-to-login'><%= link_to t(:login), spree.login_path %></li>
								<% end %>
							</div>
							<ul>
								<li><%= link_to image_tag('/home.png'), root_path %></li>
								<li><a href='http://fb.com' target='_blank'><img src='/face.png'/></a></li>
								<li><a href='http://twitter.com' target='_blank'><img src='/twitter.png'/></a></li>
							</ul>
						</div>
					</div>")

Deface::Override.new(:virtual_path => "spree/shared/_header",
					:name => "banner",
					:insert_after => "#main-menu",
					:text => "
					<% if current_page?(root_path) %>
						<div id='banner'>
							<%= render :partial => 'spree/shared/slider' %>
						</div>
					<% end %>")

Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
					:name => "remove_nav_bars",
					:remove => "li")

Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
					:name => "insert_search",
					:insert_top => "#nav-bar",
					:text => "
					<li id='search-bar' data-hook>
				      <%= render :partial => 'spree/shared/search' %>
				    </li>")

Deface::Override.new(:virtual_path => "spree/shared/_footer",
					:name => "clean_footer_left",
					:remove => "#footer-left")

Deface::Override.new(:virtual_path => "spree/shared/_footer",
					:name => "clean_footer",
					:remove => "#footer-right")

Deface::Override.new(:virtual_path => "spree/shared/_footer",
					:name => "footer_top",
					:insert_bottom => "#footer",
					:text => "
					<div id='footer-top'>
						<%= link_to image_tag('rodape-logo.png'), root_path, :class => 'logo-footer' %>
						<div class='address'>
							<p>Avenida John Sanford, 1592 - Junco - Sobral - CE - CEP: 62030-975 - 88 3111.3711</p>
						</div>
					</div>")

Deface::Override.new(:virtual_path => "spree/shared/_footer",
					:name => "footer",
					:insert_bottom => "#footer",
					:text => "
					<div id='footer-bottom'>
						<a href='http://www.graficaandrade.com.br' target='_blank'>www.graficaandrade.com.br</a>
						<img src='/logo-pague-seguro.png' title='formas de pagamento'/>
					</div>")

Deface::Override.new(:virtual_path => "spree/layouts/admin",
					:name => "logo_admin",
					:replace_contents => "figure",
					:text => "<%= link_to image_tag('logo-dashboard.png'), root_path %>")

Deface::Override.new(:virtual_path => "spree/layouts/admin",
					:name => "logo_jirafe",
					:replace_contents => "#jLogo", 
					:text => "Texto qualquer")

Deface::Override.new(:virtual_path => "spree/admin/prototypes/_form",
					 :name => "select_prototype_propety",
					 :replace_contents => "#properties",
					 :text => "
					 <%= f.field_container :property_ids do %>
				        <%= f.label :property_ids, t(:properties) %><br>
				        <%= f.select :property_ids, Spree::Property.all.map { |p| [p.name, p.id] }, {}, { :multiple => true, :class => 'select2 fullwidth' } %>
				     <% end %>")

Deface::Override.new(:virtual_path => "spree/admin/prototypes/_form",
					 :name => "select_prototype_options",
					 :replace_contents => ".omega",
					 :text => "
					 <%= f.field_container :option_type_ids do %>
				       	<%= f.label :option_type_ids, t(:option_types) %><br>
				       	<%= f.select :option_type_ids, Spree::OptionType.all.map { |ot| [ot.name, ot.id] }, {}, { :multiple => true, :class => 'select2 fullwidth' } %>
				     <% end %>")