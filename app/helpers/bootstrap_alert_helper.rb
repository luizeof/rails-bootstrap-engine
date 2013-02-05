# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Alerts & Messages
#	http://twitter.github.com/bootstrap/components.html#alerts
#
#
#	Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#	Licensed under The MIT License
#	http://opensource.org/licenses/MIT
#
module BootstrapAlertHelper




	# Show Flash Messages with Bootstrap Alerts
	def flash_messages
		messages = []
		
		flash.each do |type, message|
			next if type == :timeout
			next if type == :timedout
			type = :success if type == :notice
			type = :error   if type == :alert
			text = content_tag(:div, 
			content_tag(:button, raw("&times;"), :class => "close", "data-dismiss" => "alert") +
				message, :class => "alert fade in alert-#{type}")
				messages << text if message
		end
		messages.join("\n").html_safe
	end
	
	
	
	
	
  	#	Alert Blocks
  	def alert_block title, alert_context = :alert, &block
  		raw '<div class="alert alert-block alert-' + alert_context.to_s + '" >' +
        	'   <a class="close" data-dismiss="alert" href="#">&times;</a>' +
        	'   <h4 class="alert-heading">' + title + '</h4>' +
            	capture(&block) +
            '</div>'
    end
    
    
    
    
    
  	#	Alert Blocks
  	def alert_inline title, alert_context = :alert, &block  
	  	raw '<div class="alert alert-' + alert_context.to_s + '" >' +
        	'   <a class="close" data-dismiss="alert" href="#">&times;</a>' +
        	'   <strong class="alert-heading">' + title + '</strong>' +
            	capture(&block) +
            '</div>'
    end	



end