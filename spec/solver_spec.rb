require './solver'

describe Solver do
  context 'In the Solver class' do
    solver = Solver.new

    it 'returns factorial' do
      value = 4
      result = solver.factorial(value)
      expect(result).to eq 24
    end

    it 'should return factorial' do
      value = 0
      result = solver.factorial(value)
      expect(result).to eq 1
    end

    it 'should return factorial' do
      value = 1
      result = solver.factorial(value)
      expect(result).to eq 1
    end

    it 'throw error if negative' do
      value = -2
      expect { solver.factorial(value) }.to raise_error(StandardError)
    end

    it 'reverses the string' do
      string = 'affax'
      result = solver.reverse(string)
      expect(result).to eq 'xaffa'
    end
  end

  context 'In the Solver class' do
    solver = Solver.new
    it 'method returns fizz' do
      value = 3
      10.times do |_i|
        if value % 5 != 0
          result = solver.fizzbuzz(value)
          expect(result).to eq 'fizz'
        end
        value += 3
      end
    end

    it 'method returns buzz ' do
      value = 5
      10.times do |_i|
        if value % 3 != 0
          result = solver.fizzbuzz(value)
          expect(result).to eq 'buzz'
        end
        value += 5
      end
    end

    it 'the method fizzbuzz should return "fizzbuzz"' do
      value = 15
      10.times do |_i|
        result = solver.fizzbuzz(value)
        expect(result).to eq 'fizzbuzz'
        value += 15
      end
    end
  end
end
