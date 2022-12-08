class Person
  attr_reader :first_name, :last_name

  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    first_name.to_s + " " + last_name.to_s
  end
end
