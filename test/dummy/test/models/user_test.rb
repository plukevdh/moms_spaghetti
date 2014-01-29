require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "defining a callback should fail" do
    assert_raises(RuntimeError, "❨╯°□°❩╯︵sʞɔɐqllɐɔ") do
      class Fake < ActiveRecord::Base
        before_save :fail_one
        after_update :fail_two
      end
    end
  end

  test "not defining callbacks should still succeed" do
    assert_nothing_raised do
      class Fake < ActiveRecord::Base
        def initialize
          @thing = "one"
        end
      end
    end
  end

  test "using callbacks should fail" do
    assert_raises(RuntimeError, "❨╯°□°❩╯︵sʞɔɐqllɐɔ") { User.new(name: "Test").save }
  end
end
