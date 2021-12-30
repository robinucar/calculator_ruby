require 'calculator'
describe Calculator do
  subject(:calculator) {described_class.new}
  describe '#add' do
    it 'adds two numbers' do
      expect(subject.add(2, 3)).to eq 5
      expect(subject.add(3, 5)).to eq 8
      expect(subject.add(100, 200)).to eq 300
      expect(subject.add(1, 1)).to eq 2
      expect(subject.add(-5, -2)).to eq -7
      expect(subject.add(-9, 2)).to eq -7
      expect(subject.add(2, -9)).to eq -7
      expect(subject.add(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(subject.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
    end
  end
  describe '#subtract' do
    it 'subtract two numbers' do
      expect(subject.subtract(5, 2)).to eq 3
      expect(subject.subtract(4, 8)).to eq -4
      expect(subject.subtract(-5, -2)).to eq -3
      expect(subject.subtract(-7, 2)).to eq -9
      expect(subject.subtract(7, -2)).to eq 9
      expect(subject.subtract(5, 5)).to eq 0
      expect(subject.subtract(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(subject.subtract(Float::INFINITY, Float::INFINITY)).to be_nan
    end
  end
end