module ActiveRecord::CallbackExt
  extend ActiveSupport::Concern

  included do
    ActiveRecord::Callbacks::CALLBACKS.each do |callyak|
      self.define_singleton_method callyak do |*args, &block|
        raise "❨╯°□°❩╯︵sʞɔɐqllɐɔ"
      end
    end
  end
end

ActiveRecord::Base.send :include, ActiveRecord::CallbackExt