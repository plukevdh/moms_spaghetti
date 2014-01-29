class User < ActiveRecord::Base
  before_save :something

  private
  def something
    puts "never gonna give you up"
  end
end

