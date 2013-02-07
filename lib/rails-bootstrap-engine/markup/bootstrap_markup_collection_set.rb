# -*- encoding : utf-8 -*-
# ============================================================================
#
#	RAILS BOOTSTRAP ENGINE
##
# ============================================================================
#
# Copyright 2012-2013 Luiz Eduardo de Oliveira Fonseca, Agência Orangeweb
#
# Licensed under The MIT License
#
# http://opensource.org/licenses/MIT
#
module RailsBootstrapEngine

  class BootstrapMarkupCollectionSet
    attr_accessor :collections

    def initialize(view, items)
      @collections = {}
      items.each do |item|
        @collections[item] = RailsBootstrapEngine::BootstrapMarkupCollection.new(view)
        instance_eval <<-EOF
          def #{item}
            yield @collections[#{item.inspect}]
          end
        EOF
      end
    end
    
  end
  
end
