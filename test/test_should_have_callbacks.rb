require 'test_helper'

class UserTest < Test::Unit::TestCase
  should_have_callbacks :before_create, :set_name
end