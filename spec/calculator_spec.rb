describe Calculator do
  subject(:calculator) {described_class.new}
  it 'adds two numbers' do
    expect(subject.add(2, 3)).to eq 5
    expect(subject.add(3, 5)).to eq 8
    expect(subject.add(100, 200)).to eq 300
    expect(subject.add(1, 1)).to eq 2
    expect(subject.add(Float::INFINITY, 0)).to eq Float::INFINITY
    expect(subject.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end
end