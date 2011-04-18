module Bresson
  class ImageReference
    attr_accessor :item

    def initialize args
      @item = eval "Bresson::#{args[:source]}.new"
    end

    def method_missing name, *args
      eval "@item.#{name}(args)"
    end
    
  end
end
