# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Badges
#	http://twitter.github.com/bootstrap/components.html#labels-badges
#
#
#	Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#	Licensed under The MIT License
#	http://opensource.org/licenses/MIT
#
module BootstrapBadgeHelper




	#	Generates default badge markup
  	#
  	#	<span class="badge badge-default">Text</span>
  	#		
	def bootstrap_badge(value, type = :default, show_if_nil = false)
	
		out = (content_tag :span, value, :class => "badge badge-#{type.to_s}")
		
		if value.nil? then
			if (show_if_nil == false) then
				out = ""
			end
		end
    	
    	raw out
    end






  	#	Generates default badge markup
  	#
  	#	<span class="badge badge-default">Text</span>
  	#	
  	def badge_default value, show_if_nil = false
  		bootstrap_badge value, :default, show_if_nil
  	end






  	#	Generates success badge markup
  	#
  	#	<span class="badge badge-success">Text</span>
  	#	
  	def badge_success value, show_if_nil = false
	  	bootstrap_badge value, :success, show_if_nil
	end
	
	
	
	
	
  	#	Generates warning badge markup
  	#
  	#	<span class="badge badge-warning">Text</span>
  	#		
  	def badge_warning value, show_if_nil = false
	  	bootstrap_badge value, :warning, show_if_nil
	end
	
	
	
	
	
  	#	Generates important badge markup
  	#
  	#	<span class="badge badge-important">Text</span>
  	#		
  	def badge_important value, show_if_nil = false
	  	bootstrap_badge value, :important, show_if_nil
	end
	
	
	
	
	
  	#	Generates info badge markup
  	#
  	#	<span class="badge badge-info">Text</span>
  	#		
  	def badge_info value, show_if_nil = false
  		bootstrap_badge value, :info, show_if_nil
  	end
  	
  	
  	
  	
  	
  	#	Generates inverse badge markup
  	#
  	#	<span class="badge badge-inverse">Text</span>
  	#	
  	def badge_inverse value, show_if_nil = false
  		bootstrap_badge value, :inverse, show_if_nil
  	end
  	
  	
  	
  	
  	
    #	Generates a percent badge
  	#
  	#	<span class="badge badge-type">0%</span>
  	#		
  	def percent_badge(val, opts={})
  	
	  	show_sign = false
	  	show_sign = opts[:sign] unless opts[:sign].nil? 
  	
		  	if show_sign then
	  			out_text = "#{val.to_s}%"
	  		else
	  			out_text = val.to_s
	  		end
  	
	  	case val
	  		when 0..29
	  			type = :danger
	  		when 30..59
	  			type = :warning
	  		when 60..99
	  			type = :info
	  		when 100
	  			type = :success			  
		end #case val
  	
		bootstrap_badge(out_text, type)
	end    	



end