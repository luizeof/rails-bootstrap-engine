# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
#
#	Bootstrap Link
#
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module BootstrapLinkHelper





  	#	Cria um link para editar registros
  	#
  	#		<a href="link"><i class="icon-name"></i> title</a>
  	#
  	def link_to_edit title, link, opts={}
  		link_to raw(icon(:pencil) + " #{title}"), link, opts
  	end
  	
  	
  	
  	
  	
  	
  	#	Cria um link para voltar
  	#
  	#		<a href="link"><i class="icon-name"></i> title</a>
  	#
  	def link_to_cancel title, link, opts={}
  		link_to title, link, opts
  	end
  	
  	
  	
  	
  	
  	
  	#	Alias para link_to_cancel
  	#
  	def link_to_back title, link, opts={}
  		link_to_cancel title, link, opts
  	end
  	
  	
  	
  	
  	
  	#	Cria um link para novos registros
  	#
  	#		<a href="link"><i class="icon-name"></i> title</a>
  	#
  	def link_to_new title, link, opts={}
  		link_to raw(icon(:plus) + " #{title}"), link, opts
  	end
  	
  	
  	
  	
  	
  	#	Cria um link para apagar registros
  	#
  	#		<a href="link"><i class="icon-name"></i> title</a>
  	#
  	def link_to_delete title, link, opts={}
	  	opts[:method] = :delete
	  	opts[:data] = { confirm: 'Tem certeza que deseja apagar este registro?' }  	
  		link_to raw(icon(:trash) + " #{title}"), link, opts
  	end


end