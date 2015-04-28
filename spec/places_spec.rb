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

  describe("#Save") do
    it("adds a spot to our array of saved tasks") do
      test_places = Places.new("LA, CA")
      test_places.save()
      expect(Places.all()).to(eq([test_places]))
    end
  end


  describe(".clear") do
    it("clears the array") do
      Places.new("LA, CA").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end

end
