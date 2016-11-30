class Vehicle

  @@cars = []

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    @id = @@cars.length().+(1)
  end

  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  define_singleton_method(:all) do
    @@cars
  end

  def save
    @@cars.push(self)
  end

  define_singleton_method(:find) do |id|
    found_cars = nil
    @@cars.each() do |cars|
      if cars.id().eql?(id)
        found_cars = cars
      end
    end
    found_cars
  end
end
