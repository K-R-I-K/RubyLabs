require 'minitest/autorun'
require './Contact_book'
require './Contact'
require './Person'

class Contact_bookTest < Minitest::Test
  def setup
    @vova = Person.new("Vova", "Korobko")
    @ilia = Person.new("Ilia", "Korovka")
    @glib = Person.new("Glib", "Kryglo")

    @phone = Phone.new(38068744444)
    @contact1 = Contact.new(@vova, [@phone, Email.new("vovakorobko@gmail.com")])
    @contact2 = Contact.new(@vova, [Skype.new("id45678")])
    @contact_book = Contact_book.new([
                                       @contact1,
                                       @contact2,
                                       Contact.new(@ilia, [Skype.new("id566789")]),
                                       Contact.new(@glib, [Phone.new(38068755555)])
                                     ])
  end


  def test_to_s
    assert_equal("Vova Korobko 38068744444; vovakorobko@gmail.com; \nVova Korobko id45678; \nIlia Korovka id566789; \nGlib Kryglo 38068755555; \n",
                 @contact_book.to_s)
  end

  def test_sort_by_first_name
    sorted = @contact_book.sort_by_first_name
    assert_equal("Glib", sorted[0].person.first_name)
    assert_equal("Ilia", sorted[1].person.first_name)
    assert_equal("Vova", sorted[2].person.first_name)
  end

  def test_search_by_params
    persons = @contact_book.search_by_params(Contact.new(@vova, []))
    assert_equal(@contact1, persons[0])
    assert_equal(@contact2, persons[1])
  end

  def test_merge
    merged = @contact_book.merge_contacts(@contact1, @contact2)
    assert_equal(@vova , merged[2].person)
    assert_equal(@contact1.contacts_info + @contact2.contacts_info, merged[2].contacts_info)
  end
end
