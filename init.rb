class ActionController::Base

  class_inheritable_accessor :urchin_id

  def self.with_urchin_tracker(urchin_id)
    with_bodywork
    include Eno::UrchinTracker 
    
    after_filter :add_urchin_tracker
    self.urchin_id = urchin_id
  end
end
