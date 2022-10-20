class Product
  attr_accessor :id, :name, :upc, :producer, :cost, :expiration_date, :number

  @@next_id = 0
  def initialize(name, upc, producer, cost, expiration_date, number)
    @id = @@next_id
    @@next_id += 1
    @name = name
    @upc = upc
    @producer = producer
    @cost = cost
    @expiration_date = expiration_date
    @number = number
  end

  def to_s
    "id = #{@id} name = #{@name} upc = #{@upc} producer = #{@producer} cost = #{@cost} expiration_date = #{@expiration_date} number = #{@number}"
  end
end

class Store
  attr_accessor :products

  def initialize(products)
    @products = products
  end

  def add_new_product(product)
    @products.push(product)
  end

  def list_by_name(name)
    @products.select { |p| p.name == name }
  end

  def list_by_cost(name, cost)
    @products.select { |p| p.name == name && p.cost <= cost }
  end

  def list_by_expiration_date(expiration_date)
    @products.select { |p| p.expiration_date > expiration_date}
  end

  def to_s
    str = ""
    @products.each { |p| str += "[" + p.to_s + "],\n"}
    str
  end
end