# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Labels
#	http://twitter.github.com/bootstrap/components.html#labels-badges
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapLabelHelper



  	#	Generates base label markup
  	#
  	#	<span class="label label-?">Text</span>
  	#
	def bootstrap_label(value, type = :default)
		raw(content_tag :span, value, :class => "label label-#{type.to_s}")
	end
	
	
	
	
	
  	#	Generates default label markup
  	#
  	#	<span class="label">Text</span>
  	#	
	def label_default value
		bootstrap_label value, :default    
	end
	
	
	
	
	
  	#	Generates default label markup
  	#
  	#	<span class="label label-success">Text</span>
  	#		
	def label_success value
		bootstrap_label value, :success   
	end
	
	
	
	
	
  	#	Generates default label markup
  	#
  	#	<span class="label label-warning">Text</span>
  	#		
	def label_warning value
		bootstrap_label value, :warning   
	end
	
	
	
	
	
  	#	Generates default label markup
  	#
  	#	<span class="label label-important">Text</span>
  	#		
	def label_important value
		bootstrap_label value, :important 
	end
	
	
	
	
	
  	#	Generates default label markup
  	#
  	#	<span class="label label-info">Text</span>
  	#		
	def label_info value
		bootstrap_label value, :info
	end
	
	
	
	
	
  	#	Generates default label markup
  	#
  	#	<span class="label label-inverse">Text</span>
  	#		
	def label_inverse value
		bootstrap_label value, :inverse
	end
	
	
	
	
	
  	#	Exibe o texto 'Sim' ou 'Não' para um valor booleano em um Label
  	def yes_no_label(val, yes_text = "Sim", no_text = "Não")
	  	if val then
	  		label_success yes_text
	  	else
	  		label_default no_text
	  	end
	end



end