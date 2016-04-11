class FrontPage < SitePrism::Page
  
  set_url "http://newtours.demoaut.com"

  element :register_link, :xpath, "//a[text()='REGISTER']"


  def register_new_user
    self.wait_for_register_link
    register_link.click
  end
end
