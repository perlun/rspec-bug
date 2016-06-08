class Foo
  def some_method
    # Recurse indefinitely.
    some_method
  end
end

describe Foo do
  describe '#some_method' do
    it 'raises an error' do
      expect { subject.some_method }.to raise_error SystemStackError
    end
  end
end
