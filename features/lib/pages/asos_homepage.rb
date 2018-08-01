class AsosHomePage
  include Capybara::DSL

  def visit_homepage
    visit('/')
  end

  def click_sign_in_link
    click_button(class: '_3TGKcxB wN7TsRy')
    sleep 1
    click_link(class: '_1k1reGo')
  end

  def click_sign_out
    click_button(class: '_3TGKcxB wN7TsRy')
    sleep 1
    click_link(class: '_1k1reGo')
  end

  def signed_in?
    click_button(class: '_3TGKcxB wN7TsRy')
    sleep 1
    page.has_content?("Hi Steven").visible?
  end

  def sign_out?
    click_button(class: '_3TGKcxB wN7TsRy')
    page.has_content?("Sign in").visible?
  end

  def click_signup
    click_button(class: '_3TGKcxB wN7TsRy')
    click_link('Join')
    sleep 1
    # page.has_content?('Sign up with').visible?
  end

end
