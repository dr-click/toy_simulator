require 'spec_helper'
require 'rotation'

describe Rotation do
  describe 'Rotation' do
    it 'can rotate right' do
      expect(Rotation.new("NORTH", "RIGHT").rotate).to eql("EAST")
    end

    it 'can rotate left' do
      expect(Rotation.new("NORTH", "LEFT").rotate).to eql("WEST")
    end

    it 'can not rotate invalid direction' do
      expect(Rotation.new("SOUTH", "TEST").rotate).to eql("SOUTH")
    end
  end
end
