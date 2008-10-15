#
# The Bodywork module allows to modify the document returned from the
# server in an after_filter (i.e. when the document is already written.
#
# What you can do here is:
#
# - add some HTML code
# - add some Javascript code
# - add some CSS rules
# - include a Javascript file
# - include a CSS stylesheet
#
# to HTML and Javascript responses. The generated HTML code should still
# validate.
#
# Side effect: This module includes the JavaScriptHelper.
#
module Eno::UrchinTracker
  #
  # The with_urchin_tracker function includes urchin tracker code in all
  # responses (that support these, i.e. HTML and JS responses.)
  #
  # To manually override this you call without_urchin_tracker in a class
  # (i.e. when inheriting a urhcin_tracker enabled controller) or in 
  # an action context.

    # 
    # Suppresses the urchin_tracker code on a per-action/per-request
    # level
    def without_urchin_tracker
      skip_after_filter :add_urchin_tracker
    end

    def add_urchin_tracker
#      raise "add_urchin_tracker"
      
      return unless urchin_id = self.class.urchin_id

      link_to_file "http://www.google-analytics.com/urchin.js"
      append_js <<JS
_uacct = '#{escape_javascript(urchin_id)}'
if(typeof urchinTracker != 'undefined') urchinTracker('#{escape_javascript(request.path)}')
JS
    end
end
