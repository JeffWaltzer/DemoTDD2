require 'rspec'
require_relative  '../src/fraction_parser'

describe "Fraction parser" do

  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context "with simple Numbers" do
    it "converts a simple number" do
      expect(FractionParser.convert(5)).to eq(5)
    end
  end

end

    
