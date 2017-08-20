require 'spec_helper'

RSpec.describe InstanceExtendable do
  it 'has a version number' do
    expect(InstanceExtendable::VERSION).not_to be nil
  end
end
