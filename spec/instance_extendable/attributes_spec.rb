require "spec_helper"

RSpec.describe InstanceExtendable::Attributes do
  let(:extended_calss) { Class.new { include InstanceExtendable::Attributes } }
  let(:extended) { extended_calss.new }

  context '#extend_reader' do
    before do
      extended.extend_reader(:value) do
        123
      end
    end

    it { expect(extended.value).to eq(123) }
  end

  context '#extend_attr' do
    before do
      extended.extend_attr(:value) do
        123
      end
    end

    it { expect { extended.value = 321 }.to change { extended.value }.from(123).to(321) }
  end
end
