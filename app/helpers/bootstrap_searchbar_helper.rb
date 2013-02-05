# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Search Bar
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapSearchbarHelper



	def search_bar appended=true, &block  
  		if appended then
    		content_tag :div, (content_tag(:div, capture(&block), :class => "btn-group", :data => {:toggle => "buttons-checkbox"} ) ), :class => "input-append"
    	else
    		content_tag :div, capture(&block), :class => "btn-group", :data => {:toggle => "buttons-checkbox"}
    	end
  	end
  	
  	
  	
  	
  	
  	
  	def search_bar_search_input(placeholder = "O que deseja Pesquisar?")
  		text_field_tag 'search', params[:search], :placeholder => placeholder
  	end
  	
  	
  	
  	
  	
  	def search_bar_submit(title = "Pesquisar", color = :primary, icon = :search, opts={})
  		opts[:class] = "" if opts[:class].nil?
  		opts[:class] << " btn btn-#{color.to_s}"
  		opts[:type] = :submit
  		opts[:name] = nil
	   
	   button_tag( glyphicon(icon) + " " + title, opts)
	end
	
	
	
	
	
	def search_bar_item(title, name, value, opts={})
  		opts[:class] = "" if opts[:class].nil?
  		opts[:class] << " btn "
  		opts[:type] = :button
  		opts[:name] = name
  		opts[:value] = value
  		
	    if params.include?(name) then
	      	opts[:class] << " active "
	    end
	   
	   button_tag( title, opts)
	end 
	


end