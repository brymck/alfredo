require "nokogiri"

module Alfredo
  class ItemManager
    attr_reader :items

    def initialize
      @items = []
    end

    def <<(item)
      @items << item
    end

    def to_xml
      Nokogiri::XML::Builder.new do |xml|
        xml.items do
          @items.each do |item|
            item.build_xml xml
          end
        end
      end.to_xml
    end
  end
end
