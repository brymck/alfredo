require "dm-core"
require "sqlite3"
require "dm-sqlite-adapter"

module Alfredo
  module Knowledge
    autoload :Knowledge, "alfredo/knowledge/knowledge"
    autoload :Latching,  "alfredo/knowledge/latching"
    autoload :Other,     "alfredo/knowledge/other"
    autoload :Recentdoc, "alfredo/knowledge/recentdoc"
  end
end

DataMapper.setup "sqlite://" + ENV["HOME"] + "/Library/Application Support/Alfred 2/Databases/knowledge.alfdb"
