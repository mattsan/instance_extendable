require "spec_helper"

RSpec.describe InstanceExtendable do
  it "has a version number" do
    expect(InstanceExtendable::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
