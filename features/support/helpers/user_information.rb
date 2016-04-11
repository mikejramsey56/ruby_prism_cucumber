class UserInformation

  def initialize(user_name,password,confirm_password)
    @user_name = user_name
    @password = password
    @confirm_password = confirm_password
  end

  def to_s
    "user name: '" + @user_name + "', passwords match: " + (@password == @confirm_password && @password != nil && @password != "").to_s
  end

  def user_name
    @user_name
  end

  def password
    @password
  end

  def confirm_password
    @confirm_password
  end
end 
