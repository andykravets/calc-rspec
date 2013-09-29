require 'rspec'
require './Calc.rb'

describe Calc do
  describe '#new' do
    it 'should rise error if no arguments given' do
      expect { Calc.new }.to raise_error RuntimeError
    end

    it 'should rise exception if not Numeric given' do
      expect { Calc.new(1, 2, "string") }.to raise_error RuntimeError
    end

    it 'should summarize values' do
      Calc.new(1,2,3,4,5).plus.should==15
    end

    it 'should substract values' do
      Calc.new(1,2,3,4,5).minus.should==-15
    end
    it 'should substract even if values less then 0' do
      Calc.new(1,2,-3,4,5).minus.should==-9
    end

    it 'should clear values' do
      Calc.new(1,2,3,4,5).clear.should==[]
    end

  end
end