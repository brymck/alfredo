require_relative "spec_helper"

describe Settings do
  before :each do
    yaml = <<-END.strip_heredoc
      ---
      :location: "Charlotte"
    END

    YAML.stub(:load_file) { YAML.load(yaml) }
    @settings = Settings.new
    @settings.stub(:save!) { @saved = true }
  end

  it "should automagically create getter and setter methods for keys" do
    @settings.should respond_to(:location).with(0).arguments
    @settings.should respond_to(:location=).with(1).argument
  end

  it "should save whenever a key is set" do
    @saved.should_not be_true
    @settings.location = "Tokyo"
    @saved.should be_true
  end
end
