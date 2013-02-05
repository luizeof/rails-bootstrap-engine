# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Breadcrumbs
#	http://twitter.github.com/bootstrap/components.html#breadcrumbs
#
#
#	Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#	Licensed under The MIT License
#	http://opensource.org/licenses/MIT
#
module BootstrapBreadcrumbsHelper





	#	Generates a Breadcrumb Containner
	#
	#	<ul class="breadcrumb">
	#		<li><a href="#">Home</a> <span class="divider">/</span></li>
	#		<li><a href="#">Library</a> <span class="divider">/</span></li>
	#		<li class="active">Data</li>
	#	</ul>
	#
	def breadcrumb &block  
		content_tag(:ul, capture(&block), :class => "breadcrumb" )
	end
  	
  	
  	
  	
  	
  	
  	
	#	Generate a Breadcrumb link markup
	#
	#	if not in current page
	#
	#		<li><a href="#">Home</a> <span class="divider">/</span></li>
	#
	#	if in current page
	#
	#		<li class="active">Data</li>
	#
	def breadcrumb_item(title, link, opts={})
	
		recognized = Rails.application.routes.recognize_path(link)
		
		if recognized[:controller] == params[:controller] && recognized[:action] == params[:action]
		   content_tag(:li, :class => "active") do
			   breadcrumb_active(title)
		   end
		else
			content_tag(:li) do
				link_to( title, link, opts) + breadcrumb_divider
			end
		end		
	end
	
	
	
	
	
	
	
	
	
  	#	Generate a Breadcrumb Active link markup
  	#
  	#		<li class="active">Data</li>
  	#
	def breadcrumb_active(title)
  		content_for :page_title do title end
  		content_tag :li, title, :class => "active"
  	end
  	
  	
  	
  	
  	
  	
  	
  	
  	#	Generate a breadcrumb divider markup
  	#
  	#		<span class="divider">/</span>
  	#
  	def breadcrumb_divider(text = "/")
	  	content_tag(:span, text, :class => "divider")
	end



end