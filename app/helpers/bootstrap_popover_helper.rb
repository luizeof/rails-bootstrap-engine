# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Popovers
#	http://twitter.github.com/bootstrap/javascript.html#popovers
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapPopoverHelper






  	#	Generates bootstrap popover markup
  	#
  	#	<a href="#" rel="tooltip" title="Tooltip Text">Title</a>
  	#
  	def tooltip_link_to title, link, opts={}
  		opts[:rel] = :tooltip
  		link_to title, link, opts
  	end
	
	
	
	
	
	
  	#	Generates bootstrap popover markup
  	#
  	#	<a href="#" rel="popover" data-content="Some Content" data-original-title="A Title">
  	#		Title
  	#	</a>
  	#
	def popover title, content, options={}
		options[:rel] = :popover
		options[:data] = { :content => content, "original-title" => title }
		link_to title, "#", options
	end



end