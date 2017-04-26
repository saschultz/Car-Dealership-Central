require('rspec')
require('dealership')

describe(Dealership) do

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.name()).to(eq("Bob's Used Cars"))
    end
  end

  describe('#id') do
    it('returns the id of dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it('initially returns an empty array of cars for the dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.cars).to(eq([]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Dealership.all()).to(eq([]))
    end
  end

end
