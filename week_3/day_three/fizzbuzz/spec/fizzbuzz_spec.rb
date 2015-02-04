describe Fizzbuzz do
	it 'returns fizz if given 3' do
		expect(Fizzbuzz.run(3)).to eq 'fizz'
	end
	it 'returns buzz if given 5' do
		expect(Fizzbuzz.run(5)).to eq 'buzz'
	end
	it 'returns fizzbuzz if given 15' do
		expect(Fizzbuzz.run(15)).to eq 'fizzbuzz'
	end
	it 'returns 11 if given 11' do
		expect(Fizzbuzz.run(11)).to eq 11
	end
end