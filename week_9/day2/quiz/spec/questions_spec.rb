describe 'Quiz Questions!' do
  describe 'Question 1: Broken Code' do
    it 'should work' do
      true #this test will pass when the first question is fixed
    end
  end
  describe 'Question 2 Regular Ball / Super Ball' do
    it 'has a ball class' do
      expect(Ball).to be_a(Class)
    end
    it 'takes an argument (has an arity of 1)' do
      expect(Ball.new('super')).to be_a(Ball)
    end
    it 'has an attribute called ball_type' do
      expect(Ball.new).to respond_to(:ball_type)
    end
    it 'returns the ball type' do
      expect(Ball.new.ball_type).to eq('regular')
      expect(Ball.new('super').ball_type).to eq('super')
    end
  end
  describe 'Question 3: Sum Array' do
    it 'returns 0 for an empty array' do
      expect(sum_arary([])).to eq(0)
    end
    it 'returns 5 for an array of 3 and 2' do
      expect(sum_array([3, 2])).to eq(5)
    end
    it 'returns 9.2 for arr' do
      expect(sum_array([1, 5.2, 4, 0, -1])).to eq(9.2)
    end
  end
  describe 'Question 4: One True Value' do
    it 'returns true if any of the elements in the array return true for the block' do
    expect(any?([1,2,3]) { |x| x.even? }).to be true
    end
    it 'returns false if none of the elements in the array return true for the block' do
    expect(any?([1,5,3]) { |x| x.even? }).to be false
    end
  end
  describe 'Question 5: Vampire Numbers' do
    it 'returns true if the given numbers are vampire numbers' do
      expect(vamp_numbers([6,21])).to be true
    end
    it 'returns false if the given numbers are not vampire numbers' do
      expect(vamp_numbers([10,11])).to be false
    end
  end
end

