# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Buttons
#
#
#	Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#	Licensed under The MIT License
#	http://opensource.org/licenses/MIT
#
module BootstrapButtonHelper




  	#	Cria um button para editar registros
  	#
  	#		<a class="btn btn-warning" href="link">title</a>
  	#
  	def button_to_edit title, link, opts={}
  		opts[:class] = "" if opts[:class].nil?
  		opts[:class] << " btn-warning"
  		link_button_to raw(icon(:pencil) + " #{title}"), link, opts
  	end
  	
  	
  	
  	
  	
  	#	Cria um link para voltar
  	#
  	#		<a href="link"><i class="icon-name"></i> title</a>
  	#
  	def button_to_cancel title, link, opts={}
  		opts[:class] = "" if opts[:class].nil?
  		opts[:class] << " btn "
  		link_button_to title, link, opts
  	end
  	
  	
  	
  	
  	
  	#	Alias para link_to_cancel
  	def button_to_back title, link, opts={}
  		link_to_cancel title, link, opts
  	end
  	
  	
  	
  	
  	
  	#	Cria um link para novos registros
  	#
  	#		<a href="link"><i class="icon-name"></i> title</a>
  	#
  	def button_to_new title, link, opts={}
  		opts[:class] = "" if opts[:class].nil?
  		opts[:class] << " btn-primary "
  		link_button_to raw(icon(:plus) + " #{title}"), link, opts
  	end
  	
  	
  	
  	
  	
  	#	Cria um link para apagar registros
  	#
  	#		<a href="link"><i class="icon-name"></i> title</a>
  	#
  	def button_to_delete title, link, opts={}
  		opts[:class] = "" if opts[:class].nil?
  		opts[:class] << " btn-important "
	  	opts[:method] = :delete
	  	opts[:data] = { confirm: 'Tem certeza que deseja apagar este registro?' }  	
  		link_button_to raw(icon(:trash) + " #{title}"), link, opts
  	end
  	
  	
  	
  	
  	
  	#	Cria um link para novos registros
  	#
  	#		<a href="link"><i class="icon-name"></i> title</a>
  	#
  	def link_button_to title, link, opts={}
  		opts[:class] = "" if opts[:class].nil?
  		opts[:class] << " btn "
  		
  			unless opts[:small].nil? then
  				opts[:class] += " btn-small "
  				opts.delete(:small)
  			end
  			
  			unless opts[:mini].nil? then
  				opts[:class] += " btn-mini "
  				opts.delete(:mini)
  			end
  			
  			unless opts[:large].nil? then
  				opts[:class] += " btn-large "
  				opts.delete(:large)
  			end
  			
  			unless opts[:block].nil? then
  				opts[:class] += " btn-block "
  				opts.delete(:block)
  			end
  			
  		opts[:class].strip! 						
  			
  		link_to title, link, opts
  	end




end