class MailingInformation

  def initialize(address1,address2,city,state,postal_code,country)
    @address1 = address1
    @address2 = address2
    @city = city
    @state = state
    @postal_code = postal_code
    @country = country.upcase
  end

  def to_s
    composite_str = @address1 + "\n"
    if address2 != '' then
      composite_str += (@address2 + "\n")
    end
    composite_str += (@city + ", " + @state + " " + @postal_code + "\n")
    composite_str += @country
  end

  def address1
    @address1
  end

  def address2
    @address2
  end

  def city
    @city
  end

  def state
    @state
  end

  def postal_code
    @postal_code
  end

  def country
    @country.upcase
  end
end
