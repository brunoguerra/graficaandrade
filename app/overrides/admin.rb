Deface::Override.new(:virtual_path => "spree/layouts/admin",
					:name => "change_logo_admin",
					:replace_contents => "#logo",
					:text => "<%= link_to image_tag('logo-andrade.png'), spree.admin_path %>")

Deface::Override.new(:virtual_path   => "spree/admin/variants/_form",
                     :name           => "custom_file",
                     :insert_bottom  => ".right.six.columns.omega.label-block",
                     :text		     => "
					    <div class=\"field\" data-hook=\"template\">
					      <%= f.label :template, t(:template) %>
					      <%= f.file_field :template, :class => 'fullwidth' %>
					    </div>
                    ")