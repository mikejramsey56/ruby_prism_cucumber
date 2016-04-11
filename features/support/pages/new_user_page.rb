class NewUserPage < SitePrism::Page

  element :first_name, "input[name=firstName]"
  element :last_name, "input[name=lastName]"
  element :phone, "input[name=phone]"
  element :user_name, "input[name=email]"  # Notice intentional mistake by page authors
  element :address1, "input[name=address1]"
  element :address2, "input[name=address2]"
  element :city, "input[name=city]"
  element :state, "input[name=state]"
  element :postal_code, "input[name=postalCode]"
  element :country, "select[name=country]"
  element :user_email, "input[name=userName]"  # Notice intentional mistake by page authors
  element :password, "input[name=password]"
  element :confirm_password, "input[name=confirmPassword]"
  element :submit_button, "input[name=register]"

  def enter_contact_information(contact_info)
    #expect(contact_info).to be_kind_of("ContactInformation")
    first_name.send_keys contact_info.first_name
    last_name.send_keys contact_info.last_name
    phone.send_keys contact_info.phone
    user_email.send_keys contact_info.email
  end

  def enter_Mailing_Information(mailing_info)
    #expect(mailing_info).to be_kind_of(MailingInformation)
    address1.send_keys mailing_info.address1
    address2.send_keys mailing_info.address2
    city.send_keys mailing_info.city
    state.send_keys mailing_info.state
    postal_code.send_keys mailing_info.postal_code
    country.select(mailing_info.country)   
  end

  def enter_user_info(user_info)
    #expect(user_info).to be_kind_of(UserInformation)
    user_name.send_keys user_info.user_name
    password.send_keys user_info.password
    confirm_password.send_keys user_info.confirm_password
  end

  def submit_new_registration_request
    submit_button.click
  end
end
