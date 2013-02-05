# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Form Helpers for Bootstrap & Simple_Form
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapFormHelper 	
  	



 	
	# Generates a Fieldset
	def fieldset title, &block  
		#raw '<div class="form-inputs"><fieldset><legend>' + title + "</legend>" +
		#		capture(&block) +
		#	"</fieldset></div>"
		content_tag :fieldset, content_tag(:legend, title) << capture(&block)
	end
  
  
  
  
  
  
  
	# Generates a form actions block
	def form_actions_block  &block  
		content_tag(:div, capture(&block), :class => "form-actions" )
	end
  
  
  
  

 
	# Generates a form actions block with submit and cancel buttons
	def form_actions form, back_url, submit_title = "Gravar", cancel_title = "Cancelar"
		form_actions_block do
			(form.button :submit, submit_title) + (link_to cancel_title, back_url)
		end
	end



end