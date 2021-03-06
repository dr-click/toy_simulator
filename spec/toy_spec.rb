require 'spec_helper'
require 'toy'
require 'board'
require 'movement'
require 'rotation'

describe Toy do
  let(:toy) { Toy.new(0, 0, "NORTH", Board.new(5, 5)) }
  let(:toy_2) { Toy.new(0, 0, "SOUTH", Board.new(5, 5)) }
  let(:toy_with_positions) { Toy.new(3, 7, Board.new(5, 5)) }

  describe 'Valid Toy' do
    it 'has valid current_position' do
      expect(toy.current_position).to eq({x: 0, y: 0})
    end

    it 'can be moved to NORTH' do
      toy.move
      expect(toy.current_position).to eq({x: 0, y: 1})
    end

    it 'can be rotated' do
      toy.rotate("LEFT")
      expect(toy.face).to eq("WEST")
    end

    it 'can not be moved out of board range' do
      toy_2.move
      expect(toy_2.report).to eq("Can't move, Out of board range")
    end
  end

  describe 'Invalid Toy' do
    it 'has nil current_position' do
      expect(toy_with_positions.current_position).to eq(nil)
    end

    it 'can not be moved' do
      toy_with_positions.move
      expect(toy_with_positions.report).to eq("Can't move, InvalidToy or InvalidBoard")
    end
  end
end
