require 'active_support/inflector'

module TestUnitExtend
  
  def should_have_callbacks callback, methods
    klass = self.name.gsub('Test', '').constantize
    chain = callback.to_s + '_callback_chain'
    callbacks = klass.send(chain).map{|callback| callback.instance_variable_get(:@method)}
    self.send(:define_method, :test_XXX_callbacks)  do
      assert ([*methods] - callbacks).empty? 
    end
  end
  
end

class Test::Unit::TestCase
  class << self
    include TestUnitExtend
  end
end

class ActiveSupport::TestCase < ::Test::Unit::TestCase
  class << self
    include TestUnitExtend
  end
end if defined?(ActiveSupport::TestCase)

  
