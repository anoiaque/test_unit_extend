require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should_have_callbacks :before_create, :set_name
  
end