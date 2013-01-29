# -*- encoding : utf-8 -*-
require 'rails/generators'

module BootstrapEngine
 module Devise
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)
      desc "Copy the Devise Layout do the app/views/layouts Folder"
      
      def add_assets

        if File.exist?('app/assets/javascripts/application.js')
          insert_into_file "app/assets/javascripts/application.js", "//= require rails-bootstrap-engine\n", :after => "jquery_ujs\n"
        end

        if File.exist?('app/assets/stylesheets/application.css')
          content = File.read("app/assets/stylesheets/application.css")
          if content.match(/require_tree\s+\.\s*$/)
            style_require_block = " *= require rails-bootstrap-engine\n"
            insert_into_file "app/assets/stylesheets/application.css", style_require_block, :after => "require_self\n"
          end
        end
        
        # Copy Devise Layout for Override
        copy_file "devise.html.erb", 'app/views/layouts/devise.html.erb'
        
puts	%{

 ******************************************************************
 * Rails Bootstrap Engine has a message for you ...
 ****************************************************************** 
 
 Dear Developer,
 			
  √ Remember to overload the Application Brand Helpers.
  
  
}

      end # add_assets
      
    end # DeviseGenerator
  end # Generators
 end # Engine
end # Bootstrap
