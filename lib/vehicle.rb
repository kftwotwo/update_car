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

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@cars
  end

  def save
    @@cars.push(self)
  end
end
