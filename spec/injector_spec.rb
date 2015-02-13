require 'injector'

describe Array do
  describe "Array#injector" do

  # should be able to yield to a block
  # should accept an optional 'initial number' argument
  # should use the first element of the array as the initial value of accum if no 'initial number' argument is passed
  # should accept a method argument (as a symbol)
  # should return the accumulator argument
  # should return 1 when calling on [1] with the block {|accum, element| accum + element}
  # should return 15 when calling on [1, 2, 3, 4, 5] with the block {|accum, element| accum + element}

    it "can take a block as an argument" do
      expect([1].injector{"this is a block"}).to eq("this is a block")
    end

    it "can be called without a block" do
      expect{[1].injector}.not_to raise_error
    end

  end
end