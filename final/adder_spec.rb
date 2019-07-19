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

    context 'given float' do
      let(:number) { 2.0 }

      it 'returns argument + 2 in float' do
        expect(subject).to eq 4.0
      end
    end

    context 'given string' do
      context 'without numbers' do
        let(:number) { 'foobar' }

        it 'raises TypeError' do
          expect { subject }.to raise_error(TypeError)
        end
      end

      context 'with only numbers' do
        let(:number) { '2' }

        it 'returns argument + 2' do
          expect { subject }.to_not raise_error
        end
      end
    end

    context 'given nil' do
      let(:number) { nil }

      it 'raises NoMethodError' do
        expect { subject }.to raise_error(NoMethodError)
      end
    end
  end
end
