module Alfredo
  module Knowledge
    class Other
      include DataMapper::Resource

      storage_names[:default] = "other"

      property :type,    Decimal
      property :uid,     String
      property :data,    String
      property :context, String
      property :ts,      Decimal
    end
  end
end
