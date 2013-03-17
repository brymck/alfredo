require_relative "spec_helper"

describe ItemManager do
  before :each do
    @manager = ItemManager.new
  end

  it "should create a basic XML response" do
    @manager << Item.new(uid:          "uid",
                         arg:          "arg",
                         autocomplete: "autocomplete",
                         title:        "Title",
                         subtitle:     "Subtitle")

    @manager.to_xml.should == <<-END.strip_heredoc
      <?xml version="1.0"?>
      <items>
        <item uid="uid" arg="arg" autocomplete="autocomplete">
          <title>Title</title>
          <subtitle>Subtitle</subtitle>
        </item>
      </items>
    END
  end
end
