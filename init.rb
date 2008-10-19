class ActionController::Base
  class_inheritable_accessor :urchin_id

  def self.with_urchin_tracker(urchin_id)
  end
end
