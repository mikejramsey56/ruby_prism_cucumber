Given(/^I am on the Mecury Tours web site$/) do
  @front = FrontPage.new
  @front.load
  page.current_window.maximize
end

When(/^I request to register a new account$/) do
  @front.register_new_user
end

Then(/^I am asked for and enter Contact Information:$/) do |table|
  contact_hash = table.hashes
  contact = ContactInformation.new(contact_hash[0]["firstName"],contact_hash[0]["lastName"],contact_hash[0]["phone"],contact_hash[0]["email"])
  puts contact.to_s
  @new_user = NewUserPage.new
  @new_user.enter_contact_information(contact)
  
end

Then(/^I am asked for and enter Mailing Information:$/) do |table|
  mailing_hash = table.hashes
  mail_info = MailingInformation.new(mailing_hash[0]["address1"],mailing_hash[0]["address2"],mailing_hash[0]["city"],mailing_hash[0]["state"],mailing_hash[0]["postalCode"],mailing_hash[0]["country"])
  puts mail_info.to_s
  @new_user.enter_Mailing_Information(mail_info)
end

Then(/^I am asked for and enter User Information:$/) do |table|
  user_hash = table.hashes
  user_info = UserInformation.new(user_hash[0]["userName"],user_hash[0]["password"],user_hash[0]["confirmPassword"])
  puts user_info.to_s
  @new_user.enter_user_info(user_info)
end

When(/^I submit the new registration request$/) do
  @new_user.submit_new_registration_request
end

Then(/^the registered page is displayed with salutations to "(.+)" and with user name "(.+)"$/) do |first_last_name, user_name|
  @registered = RegisteredPage.new(first_last_name, user_name)
  puts @registered.to_s
  expect(@registered.salutation_full).to eq(@registered.expected_greeting)
  expect(@registered.ending_line).to eq(@registered.expected_ending)
end

