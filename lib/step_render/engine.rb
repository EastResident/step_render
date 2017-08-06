require 'step_render/view_helper'
module StepRender
  class Engine < ::Rails::Engine
    initializer 'step_render.action_controller_helpers' do
      ActiveSupport.on_load :action_controller do
        ActionView::Base.send :include, StepRender::ViewHelper
      end
    end
  end
end
