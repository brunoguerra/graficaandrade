Deface::Override.new(:virtual_path => "spree/layouts/admin",
					:name => "change_logo_admin",
					:replace_contents => "#logo",
					:text => "<%= link_to image_tag('logo-andrade.png'), spree.admin_path %>")