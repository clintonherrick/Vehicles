require('rspec')
require('dealership')

describe(Dealership) do
  # before() do
  #   Dealership.clear()
  # end

  describe('#name') do
    it('return the name of the dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.name()).to(eq("Bob's Used Cars"))
    end
  end

  describe('.all') do
    it('creates empty array') do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('#save')do
    it("adds a dealership to the array of the saved dealerships") do
      test_dealership = Dealership.new("Bob's Used Cars")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe('.clear') do
    it('empties the dealerships array') do
      Dealership.new("Bob's Used Cars").save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  # describe('#id')do
  #   it('returns the id of dealership')do
  #     test_dealership = Dealership.new("Bob's Userd Cars")
  #     expect(test_dealership.name()).to(eq("Bob's Used Cars"))
  #   end
  # end



end
