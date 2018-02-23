require 'spec_helper'
require 'board'

describe Board do
  describe 'Board' do
    let(:valid_board) { Board.new(10, 15) }
    let(:invalid_board) { Board.new(-50, "abc") }

    it 'has x attribute' do
      expect(valid_board.x).to be 10
    end

    it 'has y attribute' do
      expect(valid_board.y).to be 15
    end

    it 'return positive if x input is invalid' do
      expect(invalid_board.x).to be 50
    end

    it 'return 0 if y input is invalid' do
      expect(invalid_board.y).to be 0
    end
  end
end
