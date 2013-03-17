require "nokogiri"

module Alfredo
  class Item
    attr_reader :uid, :arg, :autocomplete, :title, :subtitle

    def initialize(uid: nil, arg: nil, autocomplete: nil, title: nil, subtitle: nil)
      @uid          = uid
      @arg          = arg          || uid
      @autocomplete = autocomplete || uid
      @title        = title
      @subtitle     = subtitle
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
