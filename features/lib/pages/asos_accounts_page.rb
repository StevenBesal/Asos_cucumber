class AsosAccountPage
  include Capybara::DSL

  def input_username username
    fill_in('EmailAddress', with: username)
  end

  def input_password password
    fill_in('Password', with: password)
    click_button('signin')
    sleep 3
  end

  def input_new_username username
    fill_in('Email', with: username)
  end

  def input_invalid_password password
    fill_in('Password', with: password)
  end

  def check_password_error
    find(:id, 'Password-error').text
  end

end
