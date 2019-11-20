class Customer
  attr_accessor :name, :age

  @@all = []

  def initialize(new)
    @name = name
    @ age = age
     @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end

  end
  
end
