require 'injector'

describe Array do
  describe "Array#injector" do

  # should return the accumulator argument
  # should return 1 when calling on [1] with the block {|accum, element| accum + element}
  # should return 15 when calling on [1, 2, 3, 4, 5] with the block {|accum, element| accum + element}
  # should accept a method argument (as a symbol)

    it "can take a block as an argument" do
      expect([1].injector{"this is a block"}).to eq("this is a block")
    end

    it "can be called without a block" do
      expect{[1].injector}.not_to raise_error
    end

    it "can be passed an initial value" do
      expect([1].injector(2)).to eq(2)
    end

    it "will use the value at index[0] when not explicitly passed an initial value" do
      expect([1].injector).to eq(1)
    end

    it "returns 3 when called on [1, 2]" do
      expect([1, 2].injector{|accum, element| accum + element}).to eq(3)
    end

    it "returns 15 when called on [1, 2, 3, 4, 5]" do
      expect([1, 2, 3, 4, 5].injector{|accum, element| accum + element}).to eq(15)
    end

    it "returns 20 when called on [1, 2, 3, 4, 5] with an initial value of 5" do
      expect([1, 2, 3, 4, 5].injector(5) {|accum, element| accum + element}).to eq(20)
    end

  end
end