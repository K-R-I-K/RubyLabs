require './Contact'

class Contact_book
  attr_reader :contacts

  def initialize (contacts)
    @contacts = contacts
  end

  def search_by_params(contact)
    ans = []
    contacts.select do |c|
      if c.person.first_name.include? contact.person.first_name
        if c.person.last_name.include? contact.person.last_name
          if contact.contacts_info.nil?
            ans.append(c)
          else
            isAll = true
            contact.contacts_info.each do |info|
              unless c.contacts_info.include? info
                isAll = false
                break
              end
            end
            if isAll
              ans.append(c)
            end
          end
        end
      end
    end
    ans
  end

  def merge_contacts(contact1, contact2)
    contacts.delete(contact1)
    contacts.delete(contact2)
    contacts << Contact.new(contact1.person, contact1.contacts_info + contact2.contacts_info)
  end

  def sort_by_first_name
    contacts.sort_by { |contact| [contact.person.first_name] }
  end

  def to_s
    ans = ""
    @contacts.each do |c|
      ans += c.to_s
    end
    ans
  end
end
