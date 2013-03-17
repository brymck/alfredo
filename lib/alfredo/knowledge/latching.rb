module Alfredo
  module Knowledge
    class Latching
      include DataMapper::Resource

      storage_names[:default] = "latching"

      property :item,    String
      property :keyword, String
      property :strong,  Decimal
      property :ts,      Decimal
    end
  end
end
