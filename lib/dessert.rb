class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    calories < 200
    # true if calories < 200
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_reader :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    # don't need flavor because the method only calls name and calories
    @flavor = flavor
  end

  def delicious?
    @flavor == "black licorice" ? false : super
  end
end

# !name.nil?
# If name != nil
# return true
# the last line of the funciton is always returned
# if I have two lines I must return the first one as true
