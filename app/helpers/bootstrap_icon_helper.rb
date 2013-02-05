# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Icons
#	http://twitter.github.com/bootstrap/base-css.html#icons
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapIconHelper





  	#	Generates bootstrap glyphicon markup
  	#
  	#	<i class="glyphicons-name"></i>
  	#
  	def glyphicon(ico)
	  	icon = ico.to_s
	  	icon.gsub!(/_/, "-")
	  	raw(content_tag :i, "", :class => "glyphicons-#{icon}")
	end
	
	
	
	
	
	
	
	#	Generates bootstrap glyphicon markup
	#
	#	<i class="icon-name"></i>
  	#	
  	def icon(ico)
  		icon = ico.to_s
  		icon.gsub!(/_/, "-")
  		raw(content_tag :i, "", :class => "icon-#{icon}")
  	end



end