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
  describe '#multiple' do

    it 'multiple two numbers' do
      expect(subject.multiple(2, 3)).to eq 6
      expect(subject.multiple(7, 0)).to eq 0
      expect(subject.multiple(-5, -6 )).to eq 30
      expect(subject.multiple(-4, 20)).to eq -80
      expect(subject.multiple(Float::INFINITY, 0)).to be_nan
      expect(subject.multiple(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
    end
  end

  
  describe '#divide' do

    it 'divide two numbers' do
      expect(subject.divide(8, 2)).to eq 4
      expect(subject.divide(13, 5)).to eq 2
      expect(subject.divide(-12, -4)).to eq 3
      expect(subject.divide(12, -2)).to eq -6
      expect(subject.divide(2, 8)).to eq 0
      expect(subject.divide(7, 20)).to eq 0
      expect(subject.divide(Float::INFINITY, 0)).to eq 0
      expect(subject.divide(Float::INFINITY, Float::INFINITY)).to be_nan
    end
  end

  describe '#print_answer' do
    it 'pretty prints the answer' do
      expect(subject.print_answer(4)).to eq "The Answer is: 4"
      expect(subject.print_answer(6)).to eq "The Answer is: 6"
      expect(subject.print_answer(-1)).to eq "The Answer is: -1"
      expect(subject.print_answer(0)).to eq "The Answer is: 0"
      expect(subject.print_answer(Float::INFINITY)).to eq "The Answer is: Infinity"
    end
  end
end