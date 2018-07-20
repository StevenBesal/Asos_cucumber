require_relative 'pages/asos_homepage'
# require_relative 'pages/asos_accounts_page'

module AsosSite

  def asos_homepage
    AsosHomePage.new
  end

  def asos_accounts_page
    AsosAccountPage.new
  end

end
