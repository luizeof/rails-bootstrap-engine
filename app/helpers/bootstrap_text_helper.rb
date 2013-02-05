# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Text Helpers
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapTextHelper






	#	Exibe um span com um ícone e um texto associados
	#
	#	<span><i class="icon icon-?"></i> Text</span>
	#
	def icon_text(icon, text)
		raw content_tag(:span, icon(icon.to_sym) + " #{text}")
	end
		
		
		
		
		
	
		
	#	Exibe uma Estrela de acordo com o valor de um campo booleano
	def star_icon(val)
		if val then
			content_tag(:i, "", :class => "icon icon-star star-full-color")
		else
			content_tag(:i, "", :class => "icon icon-star-empty star-empty-color")
		end
	end







	def boolean_badge(value, title_true = "Sim", title_false = "Não")
	  	if value then
	  		badge_success title_true
	  	else
	  		badge_important title_false
	  	end
	end

	
	
	
	
	
	#	Cria o Page Header
	def page_header &block
		options = {}
		if options[:class].nil? then options[:class] = "" end
		options[:class].insert(-1, " page-header ") 
		content_tag :div, capture(&block), options
	end
	
	
	
	
	
	
	
	def page_section_fluid title, options = {}
	    if options[:class].nil? then options[:class] = "" end
	    options[:class].insert(-1, " row-fluid") 
	    raw content_tag(:div, (content_tag(:hr) << content_tag(:h3, title) << content_tag(:br)), options)
	end   
	  
	  
	  
	  
	  
	  
	def page_section title, options = {}
	    if options[:class].nil? then options[:class] = "" end
	    options[:class].insert(-1, " row-fluid") 
	    raw content_tag(:div, (content_tag(:h3, title) << content_tag(:br)), options)
	end  	
	
	
	
	
	
	#	Star Rating  
	def star_rating val=0
	    
	    rating = case val
	      when 0 then 0
	      when 01..05 then 05
	      when 06..10 then 10
	      when 11..15 then 15
	      when 16..20 then 20
	      when 21..25 then 25
	      when 26..30 then 30
	      when 31..35 then 35
	      when 36..40 then 40
	      when 41..45 then 45        
	      when 46..50 then 50                                               
	      else -1
	    end
	  
	    if rating.to_i >= 0 then     
	       content_tag :span, "", :class => "star-rating rating-#{rating}", :rel => "tooltip", :title => "#{rating} estrelas"
	    else
	       content_tag :span, "!!! Entre com um valor entre 0 e 50 (#{rating}) !!!"
	    end
	    
	end



end