require_relative '../spec_helper'
require_relative '../../code/adder'

describe Adder do
  describe '.add_two' do
    subject { described_class.add_two(number) }

    context 'given integer' do
      let(:number) { 2 }

      it 'returns argument + 2' do
        expect(subject).to eq 4
      end
    end
  end
end
