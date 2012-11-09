module Bresson
  class ImageReference
    attr_accessor :item, :link, :legend

    def initialize args
      @item = eval "Bresson::#{args[:source]}.new"
      @link = args[:link]
      @legend = args[:legend]
    end

    def method_missing name, *args
      eval "@item.#{name}(args)"
    end

    def thumb
      @link.split(".com/").join(".com/thumb/")
    end

    def to_s
      '{"reference":"upload","source":"'+@item.class.to_s.split('::').last+'","link":"'+@link+'"}'
    end

  end
end
