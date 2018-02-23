require 'spec_helper'
require 'toy'
require 'board'
require 'movement'
require 'rotation'
require 'case'

describe Case do
  describe 'Case' do
    it 'has default board value' do
      sample_case = Case.new()
      expect(sample_case.board.x).to eq(Board.new(5, 5).x)
      expect(sample_case.board.y).to eq(Board.new(5, 5).y)
    end

    it 'has default nil toy value' do
      expect(Case.new().toy).to be nil
    end

    it 'can read line with PLACE' do
      sample_case = Case.new()
      sample_case.read_line("PLACE 3,3,NORTH")
      expect(sample_case.toy).to_not be nil
      expect(sample_case.toy.current_position).to eql({x: 3, y: 3})
    end

    it 'can read line with MOVE' do
      sample_case = Case.new()
      sample_case.read_line("PLACE 0,0,NORTH")
      sample_case.read_line("MOVE")
      expect(sample_case.toy).to_not be nil
      expect(sample_case.toy.current_position).to eql({x: 0, y: 1})
    end

    it 'can read line with LEFT' do
      sample_case = Case.new()
      sample_case.read_line("PLACE 0,0,NORTH")
      sample_case.read_line("LEFT")
      expect(sample_case.toy).to_not be nil
      expect(sample_case.toy.face).to eql("WEST")
    end
  end
end
