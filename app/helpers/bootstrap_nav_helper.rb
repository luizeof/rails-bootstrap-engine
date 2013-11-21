# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Sidebar & Nav: tabs, pills, and lists 
#	http://twitter.github.com/bootstrap/components.html#navs
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapNavHelper






	# 
    def nav_pills
	    elements = RailsBootstrapEngine::BootstrapMarkupCollection.new(self)
	    yield elements
	    options = {}
	    options[:type] = :pills
	    RailsBootstrapEngine::Navigation.new(elements, options).to_s
    end
    
    
    
    
    
    
	# 
    def nav_pills_stacked
	    elements = RailsBootstrapEngine::BootstrapMarkupCollection.new(self)
	    yield elements
	    options = {}
	    options[:type] = :pills
	    options[:stacked] = true
	    RailsBootstrapEngine::Navigation.new(elements, options).to_s
    end
    
    
        
        
        
    
    
	# 
    def nav_tabs
	    elements = RailsBootstrapEngine::BootstrapMarkupCollection.new(self)
	    yield elements
	    options = {}
	    options[:type] = :tabs
	    RailsBootstrapEngine::Navigation.new(elements,options).to_s
    end
    
    
    
    
    
    
    
	# 
    def nav_tabs_stacked
	    elements = RailsBootstrapEngine::BootstrapMarkupCollection.new(self)
	    yield elements
	    options = {}
	    options[:type] = :pills
	    options[:stacked] = true
	    RailsBootstrapEngine::Navigation.new(elements,options).to_s
    end     








	# Sidebar block
	def sidebar &block 
		content_tag(:div, capture(&block), :class => "well sidebar-nav" )
	end
	
	
	
	
	
	
	# Bootstrap Nav-list
	#
	#	<ul class="nav nav-list">
	#		... link itens ...
	#	</ul>
	def nav_list &block  
		content_tag(:ul, capture(&block), :class => "nav nav-list" )
	end
	
	
	
	
	
	
	# Separate groups of nav links with a header
	#
	#	<li class="nav-header">List header</li>
	def nav_header title
		content_tag(:li, title, :class => "nav-header" )
	end
	  
	  
	  
	  
	# Output a Nav Link
	#  
	# if not in current page
	#
	#	<li><a href="#">Link</a></li>
	#
	# if in current page
	#
	#	<li class="active"><a href="#">Link</a></li>
	def nav_link(title, link, opts={})
		recognized = Rails.application.routes.recognize_path(link)
		if recognized[:controller] == params[:controller] && recognized[:action] == params[:action]
			content_tag(:li, :class => "active") do
				link_to( title, link, opts)
			end
		else
			content_tag(:li) do
				link_to( title, link, opts)
			end
		end
	end
	
	
	
	
	# Output a Nav Link fot use with Tabs
	#
	#	<li><a href="#" data-toggle="tab">Link</a></li>
	def nav_tab_link(title, link, opts={})
		opts[:data] = {:toggle => :tab}
		link_to( title, link, opts)
	end




end