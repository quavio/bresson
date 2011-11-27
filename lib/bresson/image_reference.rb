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

    def to_s
      '{"reference":"upload","source":"'+@item.class.to_s.split('::').last+'","link":"'+@link+'"}'
    end

  end
end
