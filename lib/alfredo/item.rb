module Alfredo
  class Item
    attr_reader :uid, :arg, :autocomplete, :title, :subtitle

    def initialize(opts = {})
      @uid          = opts[:uid]
      @arg          = opts[:arg]          || opts[:uid]
      @autocomplete = opts[:autocomplete] || opts[:uid]
      @title        = opts[:title]
      @subtitle     = opts[:subtitle]
    end

    def build_xml(parent)
      parent.item(item_attributes) do
        parent.title    @title    unless @title.nil?
        parent.subtitle @subtitle unless @subtitle.nil?
      end
    end

    def to_xml
      Nokogiri::XML::Builder.new do |xml|
        build_xml xml
      end.to_xml
    end

    private

    def item_attributes
      @item_attributes ||= {
        uid: @uid,
        arg: @arg,
        autocomplete: @autocomplete
      }.reject { |k, v| v.nil? }
    end
  end
end
