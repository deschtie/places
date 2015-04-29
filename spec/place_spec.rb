require('rspec')
require('place')



describe(Place) do

  before() do
    Place.clear()
  end

  describe("#description") do
    it("lets user give it a description of where he/she has traveled") do
    test_Adventure = Place.new("LA, CA")
    expect(test_Adventure.description()).to(eq("LA, CA"))
    end
  end

  describe("#Save") do
    it("adds a spot to our array of saved tasks") do
      test_places = Place.new("LA, CA")
      test_places.save()
      expect(Place.all()).to(eq([test_places]))
    end
  end

  describe(".clear") do
    it("clears the array") do
      Place.new("LA, CA").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

end
