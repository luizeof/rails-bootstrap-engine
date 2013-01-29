# -*- encoding : utf-8 -*-
module BootstrapEngineHelper

	def application_brand
		"Bootstrap Engine Helper"
	end
	
	def page_title(title="")
		content_for :header_title do "#{title} | #{ application_brand }" end
	end

end