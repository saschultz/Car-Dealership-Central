require('rspec')
require('vehicle')

describe('Vehicle') do
  # before() do
  #   Vehicle.clear()
  end

describe("#make") do
  it('returns the make of the vehicle') do
    test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
    expect(test_vehicle.make()).to(eq("Toyota"))
  end
end

describe("#model") do
  it('returns the make of the vehicle') do
    test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
    expect(test_vehicle.model()).to(eq("Prius"))
  end
end

describe("#year") do
  it('returns the year of the vehicle') do
    test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
    expect(test_vehicle.year()).to(eq(2000))
  end
end
