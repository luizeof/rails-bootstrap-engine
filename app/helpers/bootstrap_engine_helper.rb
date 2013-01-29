# -*- encoding : utf-8 -*-
module BootstrapEngineHelper



	# Describes the Vendor Brand Name
	def vendor_brand
		"Minha Empresa"
	end
	
	
	
	# Describes the Vendor Url
	def vendor_url
		'http://www.minhaempresa.com.br'
	end	
	


	# Describes the Application Brand Name
	def application_brand
		"Bootstrap Engine Helper"
	end
	
	
	
	# Represents the Page title
	def page_title(title="")
		content_for :header_title do "#{title} | #{ application_brand }" end
	end
	
	
	
	# Represents the Copyright Info
	def copyright_info
		content_tag :p, link_to(raw("&copy; #{vendor_brand} #{Date.today.year}"), vendor_url)
	end
	
	

end