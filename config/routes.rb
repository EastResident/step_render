Rails.application.routes.draw do
  get 'step_render/:key', to: 'step_load#partial', as: 'step_render'
end
