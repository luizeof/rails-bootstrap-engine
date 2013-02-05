# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Progress bars
#	http://twitter.github.com/bootstrap/components.html#progress
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapProgressbarHelper


	
  	#	Bootstrap Progress Bar
  	#
  	#	<div class="progress">
  	#		<div class="bar" style="width: 60%;"></div>
  	#	</div>
  	#	
	def progress_bar(val, opts={})
	
		opts[:class] = "" if opts[:class].nil?	
		opts[:class] << " progress "
		
		if opts[:type] == :auto then
  	
			case val
				when 1..29
					opts[:type] = :danger
				when 30..59
					opts[:type] = :warning
				when 60..99
					opts[:type] = :info
				when 100
					opts[:type] = :success			  
				else
					opts[:type] = :danger
			end #case

		end
		
		# if auto
  	
		opts[:class].insert(-1, " progress-#{opts[:type].to_s}") unless opts[:type].nil? 	
		opts[:class].insert(-1, " #{opts[:effect].to_s}") unless opts[:effect].nil?   	
		opts[:class].insert(-1, " progress-striped") unless opts[:striped].nil?
		opts.delete(:striped)
		 
		opts[:progress] = val
  	
		content_tag(:div, content_tag(:div, "#{val.to_s}%", :class => "bar", :style => "width: #{val.to_s}%"), opts)
	end


end