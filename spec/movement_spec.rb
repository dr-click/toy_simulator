require 'spec_helper'
require 'toy'
require 'board'
require 'movement'

describe Movement do
  describe 'Movement' do
    it 'can move a toy to NORTH' do
      toy = Toy.new(0, 0, "NORTH", Board.new(5, 5))
      movement = Movement.new(toy, toy.board)
      expect(movement.move).to eq({x: 0, y: 1})
    end

    it 'can move a toy to EAST' do
      toy = Toy.new(0, 0, "EAST", Board.new(5, 5))
      movement = Movement.new(toy, toy.board)
      expect(movement.move).to eq({x: 1, y: 0})
    end

    it 'can move a toy to WEST' do
      toy = Toy.new(1, 1, "WEST", Board.new(5, 5))
      movement = Movement.new(toy, toy.board)
      expect(movement.move).to eq({x: 0, y: 1})
    end

    it 'can move a toy to SOUTH' do
      toy = Toy.new(1, 1, "SOUTH", Board.new(5, 5))
      movement = Movement.new(toy, toy.board)
      expect(movement.move).to eq({x: 1, y: 0})
    end

    it 'can not move a toy out of board ranage' do
      toy = Toy.new(0, 0, "SOUTH", Board.new(5, 5))
      movement = Movement.new(toy, toy.board)
      expect(movement.move).to be nil
    end
  end
end
