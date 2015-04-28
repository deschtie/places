require('rspec')
require('places')

describe(Places) do
  describe("#description") do
    it("lets user give it a description of where he/she has traveled") do
    test_Adventure = Places.new("LA, CA")
    expect(test_Adventure.description()).to(eq("LA, CA"))
    end
  end

  describe(".empty_place") do
      it("gives the user an empty array where he/she will post places traveled") do
        expect(Places.all()).to(eq([]))
    end
  end


end
