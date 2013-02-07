# encoding: utf-8
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
