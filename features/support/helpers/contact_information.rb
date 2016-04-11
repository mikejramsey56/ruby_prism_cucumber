class ContactInformation
  

  def initialize(first, last, phone, email)
    @first_name = first
    @last_name = last
    @phone = phone
    @email = email
  end

  def to_s
    "Name: " + @first_name + " " + @last_name + ", phone: " + @phone + ", email: " + @email
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def phone
    @phone
  end

  def email
    @email
  end

end 
