require "step_render/engine"
require 'active_job/arguments'

# ActionView::Base.send :include, StepRender::ViewHelper

module StepRender
  # Your code goes here...
end

class ActionDispatch::Routing::Mapper
  def mount_step_render
    get 'step_render/:key', to: 'step_load#partial', as: 'step_render'
    get 'step_cache/:key', to: 'step_load#fetch', as: 'step_cache'
  end
end
