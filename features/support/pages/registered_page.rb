class RegisteredPage < SitePrism::Page

  def initialize(first_last_name, user_name)
    @expected_greeting = " Dear " + first_last_name + ","
    @expected_ending = " Note: Your user name is " + user_name + "."
  end

  element :salutation, :xpath, "//td/p[1]/font/b[contains(text(),' Dear ')]"
  element :user_name_line, :xpath, "//table/tbody/tr[3]/td/p[3]/a/font/b[contains(text(),' Note: Your user name is ')]"

  def to_s
    @expected_greeting + "\n" + @expected_ending + "\n"
  end

  def salutation_full
    salutation.text
  end

  def ending_line
    user_name_line.text
  end

  def expected_greeting
    @expected_greeting.strip
  end

  def expected_ending
    @expected_ending.strip
  end
end
