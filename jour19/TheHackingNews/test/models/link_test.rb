require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  
  def setup
    @link = Link.new(url: "http://lelien.poste.com")
  end

  test "pseudo should be present" do 
  	@link.url = "     "
  	assert_not @link.valid?
  end
  
end