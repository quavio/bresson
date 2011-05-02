module Bresson
  class ImageReference
    attr_accessor :item, :link

    def initialize args
      @item = eval "Bresson::#{args[:source]}.new"
      @link = args[:link]
    end

    def method_missing name, *args
      eval "@item.#{name}(args)"
    end
    
  end
end
