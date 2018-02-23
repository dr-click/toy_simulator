require 'spec_helper'
require 'toy'

describe Toy do
  let(:toy) { Toy.new }
  let(:toy_with_positions) { Toy.new(3, 7) }

  describe 'Toy' do
    it 'has nil current_position' do
      expect(toy.current_position).to eq(nil)
    end

    it 'has current_position with values' do
      expect(toy_with_positions.current_position).to eq({x: 3, y: 7})
    end
  end
end
