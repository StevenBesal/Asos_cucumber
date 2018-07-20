class AsosHomePage
  include Capybara::DSL

  def visit_homepage
    visit('/')
  end

  def click_sign_in_link
    click_button(:class, '_3TGKcxB wN7TsRy')
    click_link(:class, '_1k1reGo')
  end

  def click_sign_out
    # click_link("Sign out")
  end

  def signed_in?
    # click_button(:class, '_3TGKcxB wN7TsRy')
    find_link("Hi Steven").visible?
  end

  def sign_out?
    # page.has_content?("Sign in")
  end

end
