require 'activerecord'

class User < ActiveRecord::Base
  before_create :set_name
  
  def set_name
    @name = 'toto'
  end
  

end