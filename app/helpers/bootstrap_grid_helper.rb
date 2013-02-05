# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Grid System
#	http://twitter.github.com/bootstrap/scaffolding.html#gridSystem
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapGridHelper






  	#	Bootstrap Container Fixed
  	#
  	#	<div class="container">
  	#		... rows ...
  	#			... span ...
  	#		... rows ...
  	#	</div>
  	#	
	def container opts={}, &block
		opts[:class] = "" if opts[:class].nil?
		opts[:class].insert(-1, " container ") 
		content_tag(:div, capture(&block), opts)	
	end
	
	
	
	
	
	
	
  	#	Bootstrap Container Fluid
  	#
  	#	<div class="container-fluid">
  	#		... row-fluid ...
  	#			... span ...
  	#		... row-fluid ...
  	#	</div>
  	#	
	def container_fluid opts={}, &block
		opts[:class] = "" if opts[:class].nil?
		opts[:class].insert(-1, " container-fluid ") 
		content_tag(:div, capture(&block), opts)	
	end	
	
	
	
	
	
	
	
  	#	Bootstrap Grid Row Fixed
  	#
  	#	<div class="row">
  	#		... span items ...
  	#	</div>
  	#	
	def row opts={}, &block
		opts[:class] = "" if opts[:class].nil?
		opts[:class].insert(-1, " row ") 
		content_tag(:div, capture(&block), opts)	
	end
	
	
	
	
	
	
	
  	#	Bootstrap Grid Row Fluid
  	#
  	#	<div class="row-fluid">
  	#		... span items ...
  	#	</div>
  	#
	def row_fluid opts={}, &block
		opts[:class] = "" if opts[:class].nil?	
		opts[:class].insert(-1, " row-fluid ") 
		content_tag(:div, capture(&block), opts)
	end
	
	
	
	
	
	
	
  	#	Bootstrap Grid Row
  	#
  	#	<div class="span?">...</div>
  	#
	def span cols, opts={}, &block
		opts[:class] = "" if opts[:class].nil?
		offset = ""
		
		unless opts[:offset].nil? then offset = " offset#{opts[:offset]} " end
		if opts[:class].nil? then opts[:class] = "" end
		
		opts.delete(:offset)
		opts[:class].insert(-1, " span#{cols}" + offset) 
    
		content_tag(:div, capture(&block), opts)
	end



end