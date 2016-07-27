require File.join(File.dirname(__FILE__), "helpers")
require "sensu/extensions/debug"

describe "Sensu::Extension::Debug" do
  include Helpers

  before do
    @extension = Sensu::Extension::Debug.new
  end

  it "can run, returning the event data" do
    event_json = Sensu::JSON.dump(event_template)
    @extension.safe_run(event_json) do |output, status|
      expect(output).to eq(event_json)
      expect(status).to eq(0)
    end
  end
end
