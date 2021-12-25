# frozen_string_literal: true

# class Sickman
class Sickman
  attr_accessor :last_name, :age

  def initialize(last_name, age)
    @last_name = last_name
    @age = age
  end
end

# class Sickboy
class Sickboy < Sickman
  attr_accessor :last_year

  def initialize(last_name, age)
    super(last_name, age)
    @last_year = (@age.to_i - @age.to_i % 3)
  end
end
