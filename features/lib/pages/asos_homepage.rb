class AsosHomePage
  include Capybara::DSL

  def visit_homepage
    visit('/')
  end

  def click_sign_in_link
    # click_link("idcta-link")
  end

  def click_sign_out
    # click_link("Sign out")
  end

  def signed_in?
    # find_link("Your account").visible?
  end

  def sign_out?
    # page.has_content?("Sign in")
  end

end
