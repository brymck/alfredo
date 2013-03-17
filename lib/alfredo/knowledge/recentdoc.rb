module Alfredo
  module Knowledge
    class Recentdoc
      include DataMapper::Resource

      property :path,   String
      property :bundle, String
      property :ts,     Decimal
    end
  end
end
