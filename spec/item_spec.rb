require_relative "spec_helper"

describe Item do
  it "should return blank item tags if no parameters are passed" do
    @item = Item.new
    @item.to_xml.should == <<-END.strip_heredoc
      <?xml version="1.0"?>
      <item/>
    END
  end
end
