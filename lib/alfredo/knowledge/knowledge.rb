module Alfredo
  module Knowledge
    class Knowledge
      include DataMapper::Resource

      storage_names[:default] = "knowledge"

      property :item,    String
      property :keyword, String
      property :ts,      Decimal
    end
  end
end
