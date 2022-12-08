require './Person'

class Contact
  attr_reader :person, :contacts_info

  def initialize (person, contacts_info)
    @person = person
    @contacts_info = contacts_info
  end

  def to_s
    info = ""
    @contacts_info.each do |i|
      info += i.to_s + "; "
    end
    @person.to_s + " " + info + "\n"
  end
end

class Contact_info
  attr_reader :contact_info

  def initialize (contact_info)
    @contact_info = contact_info
  end

  def to_s
    contact_info.to_s
  end
end

class Phone < Contact_info
  @contact_info
end

class Skype < Contact_info
  @contact_info
end

class Email < Contact_info
  @contact_info
end