require './Contact_book'

vova = Person.new("Vova", "Korobko")
ilia = Person.new("Ilia", "Korovka")
glib = Person.new("Glib", "Kryglo")

phone = Phone.new(38068744444)
contact1 = Contact.new(vova, [phone, Email.new("vovakorobko@gmail.com")])
contact2 = Contact.new(vova, [Skype.new("id45678")])
contact_book = Contact_book.new([
                                  contact1,
                                  contact2,
  Contact.new(ilia, [Skype.new("id566789")]),
  Contact.new(glib, [Phone.new(38068755555)])
])

puts(contact_book.to_s)
puts("---------------------------------------------------------------")
puts(contact_book.sort_by_first_name)
puts("---------------------------------------------------------------")
puts(contact_book.search_by_params(Contact.new(vova, [])))
puts("---------------------------------------------------------------")
contact_book.merge_contacts(contact1, contact2)
puts(contact_book.search_by_params(Contact.new(vova, [])))
