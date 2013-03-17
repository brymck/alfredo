$:.unshift File.join(File.dirname(__FILE__), *%w[.. lib])
require "alfredo"
include Alfredo

class String
  def strip_heredoc
    indent = scan(/^[ \t]*(?=\S)/).min.size || 0
    gsub(/^[ \t]{#{indent}}/, '')
  end
end
