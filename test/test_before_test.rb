require 'test_helper'

class BeforeTestTest < Test::Unit::TestCase
  
  before_test :test_me, :setup_for_test_me
  
  def test_me
    assert_equal "Cup of tea please", @var
  end
  
  
  private
  
  def setup_for_test_me
    @var = "Cup of tea please"
  end
  
end