require 'minitest/autorun'
require './src/Task2'

class Task2Test < Minitest::Test
  @@store = Store.new([Product.new("beer", "e4567890", "Germany", 10, 90, 1000),
                     Product.new("beer", "e56789", "England", 6, 60, 100),
                     Product.new("sausages", "e567890", "Germany", 8, 30, 500),
                     Product.new("sausages", "e3456789", "England", 4, 40, 300),
                     Product.new("nuts", "e3782632", "England", 3, 1000, 700)])

  def test_task2_1
    expected = "[id = 0 name = beer upc = e4567890 producer = Germany cost = 10 expiration_date = 90 number = 1000],\n"<<
               "[id = 1 name = beer upc = e56789 producer = England cost = 6 expiration_date = 60 number = 100],\n"<<
               "[id = 2 name = sausages upc = e567890 producer = Germany cost = 8 expiration_date = 30 number = 500],\n"<<
               "[id = 3 name = sausages upc = e3456789 producer = England cost = 4 expiration_date = 40 number = 300],\n"<<
               "[id = 4 name = nuts upc = e3782632 producer = England cost = 3 expiration_date = 1000 number = 700],\n"
    assert_equal(expected, @@store.to_s)
  end

  def test_task2_2
    expected = "[id = 0 name = beer upc = e4567890 producer = Germany cost = 10 expiration_date = 90 number = 1000],\n"<<
      "[id = 1 name = beer upc = e56789 producer = England cost = 6 expiration_date = 60 number = 100],\n"
    assert_equal(expected, Store.new(@@store.list_by_name("beer")).to_s)
  end

  def test_task2_3
    expected = "[id = 1 name = beer upc = e56789 producer = England cost = 6 expiration_date = 60 number = 100],\n"
    assert_equal(expected, Store.new(@@store.list_by_cost("beer", 8)).to_s)
  end

  def test_task2_4
    expected = "[id = 0 name = beer upc = e4567890 producer = Germany cost = 10 expiration_date = 90 number = 1000],\n"<<
      "[id = 1 name = beer upc = e56789 producer = England cost = 6 expiration_date = 60 number = 100],\n"<<
      "[id = 4 name = nuts upc = e3782632 producer = England cost = 3 expiration_date = 1000 number = 700],\n"
    assert_equal(expected, Store.new(@@store.list_by_expiration_date(50)).to_s)
  end
end
