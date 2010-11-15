module TestUnitExtend
  def self.included(base)
    
    def run(result,&block)
      send(@@___before_tests[method_name]) if @@___before_tests[method_name]
      original_run(result,&block)
    end
    
    class << base
      @@___before_tests ||= {}
    
      def before_test test, proc
        @@___before_tests.merge!({test.to_s => proc})
      end
    end
    
  end
end

class ActiveSupport::TestCase < ::Test::Unit::TestCase
  alias_method :original_run, :run
  include TestUnitExtend
end if defined?(ActiveSupport::TestCase)

class Test::Unit::TestCase
  alias_method :original_run, :run
  
  def run(result,&block)
    send(@@___before_tests[method_name]) if @@___before_tests[method_name]
    original_run(result,&block)
  end
  
  include TestUnitExtend
end


    

