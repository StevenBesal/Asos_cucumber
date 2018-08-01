class AsosPages
  include Capybara::DSL

  def click_new_in
    click_link('SHOP NOW')
    sleep 1
  end

end
