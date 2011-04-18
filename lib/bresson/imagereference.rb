module Bresson
  class ImageReference
    attr_accessor :item

    def initialize args
      @item = eval(args[:service]).new
    end

    def find_url
      @item.find_url
    end
    
    def thumb
    end

  end
end
