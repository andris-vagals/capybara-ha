# Initializes all page objects
class Pages

  attr_accessor  :create_user_page

  def initialize
    @create_user_page = CreateUserPage.new
  end

end