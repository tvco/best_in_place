require 'rails/railtie'
require 'action_view/base'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    config.after_initialize do
      BestInPlace::ViewHelpers = ActionView::Base.new(ActionView::LookupContext.new(nil), {}, nil)
    end
  end
end
