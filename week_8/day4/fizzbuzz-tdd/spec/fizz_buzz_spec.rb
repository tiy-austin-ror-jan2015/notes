describe FizzBuzz do

  describe 'exists?' do
    it 'should exist' do
      expect(FizzBuzz).to_not be_nil
    end
  end

  describe 'run' do
    let(:fizzbuzz) { FizzBuzz.new }

    it 'responds to run' do
      expect(fizzbuzz).to respond_to(:run)
    end

    it 'returns 1 when given 1' do
      expect(fizzbuzz.run(1)).to eq(1)
    end

    it 'returns 2 when given 2' do
      expect(fizzbuzz.run(2)).to eq(2)
    end

    it 'returns "fizz" when given 3' do
      expect(fizzbuzz.run(3)).to eq('fizz')
    end

    it 'returns 4 when given 4' do
      expect(fizzbuzz.run(4)).to eq(4)
    end

    it 'returns "buzz" when given 5' do
      expect(fizzbuzz.run(5)).to eq('buzz')
    end

    it 'returns "fizz" when given 6' do
      expect(fizzbuzz.run(6)).to eq('fizz')
    end

    it 'returns 8 when given 8' do
      expect(fizzbuzz.run(8)).to eq(8)
    end

    it 'returns "fizz" when given 9' do
      expect(fizzbuzz.run(9)).to eq('fizz')
    end

    it 'returns "buzz" when given 10' do
      expect(fizzbuzz.run(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when given 15' do
      expect(fizzbuzz.run(15)).to eq('fizzbuzz')
    end

    it 'returns "fizzbuzz" when given 30' do
      expect(fizzbuzz.run(30)).to eq('fizzbuzz')
    end

    it 'returns "fizzbuzz" when given 45' do
      expect(fizzbuzz.run(45)).to eq('fizzbuzz')
    end

  end

end
